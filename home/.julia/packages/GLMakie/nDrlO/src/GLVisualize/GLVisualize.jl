module GLVisualize

using ..GLAbstraction
using AbstractPlotting: RaymarchAlgorithm, IsoValue, Absorption, MaximumIntensityProjection, AbsorptionRGBA, IndexedAbsorptionRGBA

using ..GLMakie.GLFW
using ModernGL
using StaticArrays
using GeometryTypes
using Colors
using AbstractPlotting
using FixedPointNumbers
using FileIO
using FreeType
import IterTools
using Markdown
using FreeTypeAbstraction
using ImageCore
import ColorVectorSpace
using Observables

import ImageCore
import AxisArrays, ImageAxes

import Base: merge, convert, show
using Base.Iterators: Repeated, repeated
using LinearAlgebra

using IndirectArrays
const HasAxesArray{T, N} = AxisArrays.AxisArray{T, N}
const AxisMatrix{T} = HasAxesArray{T, 2}

import AbstractPlotting: to_font, glyph_uv_width!, glyph_scale!
import ..GLMakie: get_texture!

const GLBoundingBox = AABB{Float32}

"""
Replacement of Pkg.dir("GLVisualize") --> GLVisualize.dir,
returning the correct path
"""
dir(dirs...) = joinpath(@__DIR__, dirs...)
using ..GLMakie: assetpath, loadasset

include("types.jl")
export CIRCLE, RECTANGLE, ROUNDED_RECTANGLE, DISTANCEFIELD, TRIANGLE

include("visualize_interface.jl")
export visualize # Visualize an object
export visualize_default # get the default parameter for a visualization

include("utils.jl")
export y_partition, y_partition_abs
export x_partition, x_partition_abs
export loop, bounce

include(joinpath("visualize", "lines.jl"))
include(joinpath("visualize", "image_like.jl"))
include(joinpath("visualize", "mesh.jl"))
include(joinpath("visualize", "particles.jl"))
include(joinpath("visualize", "surface.jl"))

end # module
