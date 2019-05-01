

- [Genie](index.md#Genie-1)
    - [Quick start](index.md#Quick-start-1)
    - [Next steps](index.md#Next-steps-1)
    - [Acknowledgements](index.md#Acknowledgements-1)

<a id='FileSessionAdapter.write' href='#FileSessionAdapter.write'>#</a>
**`FileSessionAdapter.write`** &mdash; *Function*.



```
write(session::Sessions.Session) :: Sessions.Session
```

Persists the `Session` object to the file system, using the configured sessions folder and returns it.


<a target='_blank' href='https://github.com/essenciary/Genie.jl/tree/bbc5671fb81149c8da565a16ed27d1cf7fd2ccfc/src/session_adapters/FileSessionAdapter.jl#L7-L11' class='documenter-source'>source</a><br>

<a id='FileSessionAdapter.read' href='#FileSessionAdapter.read'>#</a>
**`FileSessionAdapter.read`** &mdash; *Function*.



```
read(session_id::Union{String,Symbol}) :: Nullable{Sessions.Session}
read(session::Sessions.Session) :: Nullable{Sessions.Session}
```

Attempts to read from file the session object serialized as `session_id`.


<a target='_blank' href='https://github.com/essenciary/Genie.jl/tree/bbc5671fb81149c8da565a16ed27d1cf7fd2ccfc/src/session_adapters/FileSessionAdapter.jl#L29-L34' class='documenter-source'>source</a><br>

