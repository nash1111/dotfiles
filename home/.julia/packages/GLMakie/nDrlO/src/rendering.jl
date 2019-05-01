function renderloop(screen::Screen; framerate = 1/30, prerender = () -> nothing)
    try
        while isopen(screen)
            t = time()
            GLFW.PollEvents() # GLFW poll
            prerender()
            make_context_current(screen)
            render_frame(screen)
            GLFW.SwapBuffers(to_native(screen))
            diff = framerate - (time() - t)
            if diff > 0
                sleep(diff)
            else # if we don't sleep, we need to yield explicitely
                yield()
            end
        end
    catch e
        destroy!(screen)
        rethrow(e)
    end
    destroy!(screen)
    return
end



function setup!(screen)
    glEnable(GL_SCISSOR_TEST)
    if isopen(screen)
        glScissor(0, 0, widths(screen)...)
        glClearColor(1, 1, 1, 1)
        glClear(GL_COLOR_BUFFER_BIT)
        for (id, rect, clear, visible, color) in screen.screens
            if visible[]
                a = rect[]
                rt = (minimum(a)..., widths(a)...)
                glViewport(rt...)
                if clear[]
                    c = color[]
                    glScissor(rt...)
                    glClearColor(red(c), green(c), blue(c), alpha(c))
                    glClear(GL_COLOR_BUFFER_BIT)
                end
            end
        end
    end
    glDisable(GL_SCISSOR_TEST)
    return
end

const selection_queries = Function[]

"""
Renders a single frame of a `window`
"""
function render_frame(screen::Screen)
    nw = to_native(screen)
    GLAbstraction.is_context_active(nw) || return
    fb = screen.framebuffer
    wh = Int.(framebuffer_size(nw))
    resize!(fb, wh)
    w, h = wh
    glDisable(GL_STENCIL_TEST)
    #prepare for geometry in need of anti aliasing
    glBindFramebuffer(GL_FRAMEBUFFER, fb.id[1]) # color framebuffer
    glDrawBuffers(2, [GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1])
    glClearColor(0,0,0,0)
    glClear(GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT | GL_COLOR_BUFFER_BIT)
    setup!(screen)
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE)
    GLAbstraction.render(screen, true)
    # transfer color to luma buffer and apply fxaa
    glBindFramebuffer(GL_FRAMEBUFFER, fb.id[2]) # luma framebuffer
    glDrawBuffer(GL_COLOR_ATTACHMENT0)
    glViewport(0, 0, w, h)
    glClearColor(0,0,0,0)
    glClear(GL_COLOR_BUFFER_BIT)
    GLAbstraction.render(fb.postprocess[1]) # add luma and preprocess

    glBindFramebuffer(GL_FRAMEBUFFER, fb.id[1]) # transfer to non fxaa framebuffer
    glViewport(0, 0, w, h)
    glDrawBuffer(GL_COLOR_ATTACHMENT0)
    GLAbstraction.render(fb.postprocess[2]) # copy with fxaa postprocess

    #prepare for non anti aliased pass
    glDrawBuffers(2, [GL_COLOR_ATTACHMENT0, GL_COLOR_ATTACHMENT1])

    GLAbstraction.render(screen, false)
    #Read all the selection queries
    glReadBuffer(GL_COLOR_ATTACHMENT1)
    for query_func in selection_queries
        query_func(fb.objectid, w, h)
    end
    glBindFramebuffer(GL_FRAMEBUFFER, 0) # transfer back to window
    glViewport(0, 0, w, h)
    glClearColor(0, 0, 0, 0)
    glClear(GL_COLOR_BUFFER_BIT)
    GLAbstraction.render(fb.postprocess[3]) # copy postprocess
    return
end

function id2rect(screen, id1)
    # TODO maybe we should use a different data structure
    for (id2, rect, clear, color) in screen.screens
        id1 == id2 && return true, rect
    end
    false, IRect(0,0,0,0)
end

function GLAbstraction.render(screen::Screen, fxaa::Bool)
    for (zindex, screenid, elem) in screen.renderlist
        found, rect = id2rect(screen, screenid)
        found || continue
        a = rect[]
        glViewport(minimum(a)..., widths(a)...)
        if fxaa && elem[:fxaa][]
            render(elem)
        end
        if !fxaa && !elem[:fxaa][]
            render(elem)
        end
    end
    return
end
