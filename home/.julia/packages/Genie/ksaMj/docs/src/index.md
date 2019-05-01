![Genie Logo](https://dl.dropboxusercontent.com/s/0dbiza50r63cvvc/genie_logo.png)

[![Stable](https://readthedocs.org/projects/docs/badge/?version=stable)](http://geniejl.readthedocs.io/en/stable/build/)
[![Latest](https://readthedocs.org/projects/docs/badge/?version=latest)](http://geniejl.readthedocs.io/en/latest/build/)

# Genie
### The high-performance high-productivity Julia web framework

Genie is a full-stack MVC web framework that provides a streamlined and efficient workflow for developing modern web applications. It builds on Julia's strengths (high-level, high-performance, dynamic, JIT compiled), exposing a rich API and a powerful toolset for productive web development.

## Quick start
In a Julia session clone `Genie` and its dependencies:
```julia
julia> Pkg.clone("https://github.com/JuliaDB/DBI.jl") # Julia's DB interface

julia> Pkg.clone("https://github.com/JuliaDB/PostgreSQL.jl") # PostgreSQL adapter

julia> Pkg.clone("https://github.com/essenciary/Flax.jl") # Genie's templating engine

julia> Pkg.clone("https://github.com/essenciary/SearchLight.jl") # Genie's ORM

julia> Pkg.clone("https://github.com/essenciary/Genie.jl") # Finally the Genie itself 👻
```

Bring it into scope:
```julia
julia> using Genie
```

Create a new app:
```julia
julia> Genie.REPL.new_app("demo_app")

info: Done! New app created at /demo_app

warn: You must restart the current Julia session before loading the new app to properly reinitialize Genie.
```

`cd` into the new app's dir and start the server:
```
$> ./genie.jl s
```

See it in action by navigating to `http://localhost:8000/` with your favorite browser.

---

In order to start a Genie interactive session, load the app into the Julia REPL:
```
$> julia -L genie.jl --color=yes --depwarn=no -q
```

Alternatively, from a regular Julia session, you can just
```julia
julia> include("genie.jl")
```

Once the app is loaded you can start the web server anytime with
```julia
julia> AppServer.startup()
```


## Next steps
If you want to learn more about Genie you can
* read the guides
* check out the API docs
* dive into the demo apps
  * [TodoMVC](https://github.com/essenciary/genie-todo-mvc)
  * [PkgSearch web app and REST API](https://github.com/essenciary/pgksearch-api-website)
  * [Genie CMS]()


## Acknowledgements
* The amazing Genie logo was designed by my friend Alvaro Casanova (www.yeahstyledg.com).
* Genie uses a multitude of packages that have been contributed by so many incredible developers.
* I wouldn't have made it so far without the help and the patience of the amazing people at the `julia-users` group.

Thank you all.
