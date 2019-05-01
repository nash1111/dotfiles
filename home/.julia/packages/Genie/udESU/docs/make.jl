using Documenter, Genie
using App, AppServer, Authentication, Authorization
using Cache, Commands, Configuration, Cookies, WebChannels
using DatabaseSeeding, Error, FileTemplates, Generator
using Helpers, Inflector, Input, Loggers, Macros, Migration
using Renderer, REPL, Router, Sessions, Tester, Toolbox, Util
using FileCacheAdapter, FileSessionAdapter, Encryption

push!(LOAD_PATH,  "../../src",
                  "../../src/cache_adapters",
                  "../../src/session_adapters")

makedocs()
