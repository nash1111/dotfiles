Sphere(x...) = HyperSphere(x...)

Circle(x...) = HyperSphere(x...)

widths(c::HyperSphere{N, T}) where {N, T} = Vec{N, T}(radius(c)*2)
radius(c::HyperSphere) = c.r
origin(c::HyperSphere) = c.center
minimum(c::HyperSphere{N, T}) where {N, T} = Vec{N, T}(origin(c)) - Vec{N, T}(radius(c))
maximum(c::HyperSphere{N, T}) where {N, T} = Vec{N, T}(origin(c)) + Vec{N, T}(radius(c))
