using Documenter, MacroTools

makedocs(
    sitename = "MacroTools",
    pages = [
        "Home" => "index.md",
        "Pattern Matching" => "pattern-matching.md",
        "SourceWalk" => "sourcewalk.md",
        "Utilities" => "utilities.md"],
    format = Documenter.HTML(prettyurls = haskey(ENV, "CI")))

deploydocs(
  repo = "github.com/MikeInnes/MacroTools.jl.git",)
