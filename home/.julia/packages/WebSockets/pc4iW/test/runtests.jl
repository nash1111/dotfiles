using WebSockets, Test, Base64, Random
import Base: BufferStream, convert
import WebSockets.HTTP, Sockets, Dates
import WebSockets.MbedTLS
import Sockets.@ip_str

@testset "WebSockets" begin
    include("logformat.jl")
    include("client_server_functions.jl")

    printstyled(color=:blue, "\nBase.Show\n")
    @testset "Base.show" begin
       include("show_test.jl");sleep(1)
    end

    printstyled(color=:blue, "\nWebsocketLogger\n")
    @testset "WebSocketLogger" begin
       include("test_websocketlogger.jl");sleep(1)
    end

    printstyled(color=:blue, "\nFragment and unit\n")
    @testset "Fragment and unit" begin
       include("frametest.jl");sleep(1)
    end

    printstyled(color=:blue, "\nHandshake\n")
    @testset "Handshake" begin
        include("handshaketest.jl");sleep(1)
    end

    printstyled(color=:blue, "\nClient test\n")
    @testset "Client" begin
        include("client_test.jl");sleep(1)
    end

    printstyled(color=:blue, "\nClient_listen\n")
    @testset "Client_listen" begin
        include("client_listen_test.jl");sleep(1)
    end

    printstyled(color=:blue, "\nClient_serverWS\n")
    @testset "Client_serverWS" begin
        include("client_serverWS_test.jl");sleep(1)
    end

    printstyled(color=:blue, "\nAbrupt close & error handling\n")
    @testset "Abrupt close & error handling" begin
       include("error_test.jl");sleep(1)
    end
    if !@isdefined(OLDLOGGER)
        Logging.global_logger(OLDLOGGER)
    end
end
