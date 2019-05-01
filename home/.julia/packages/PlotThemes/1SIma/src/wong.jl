# colors chosen by according to https://www.nature.com/articles/nmeth.1618?WT.ec_id=NMETH-201106
# as proposed by @tpoisot in https://github.com/JuliaPlots/Plots.jl/issues/1144
const wong_palette = [
    RGB(([230, 159,   0] / 255)...), # orange
    RGB(([ 86, 180, 233] / 255)...), # sky blue
    RGB(([  0, 158, 115] / 255)...), # blueish green
    RGB(([240, 228,  66] / 255)...), # yellow
    RGB(([  0, 114, 178] / 255)...), # blue
    RGB(([213,  94,   0] / 255)...), # vermillion
    RGB(([204, 121, 167] / 255)...), # reddish purple
    ]

_themes[:wong] = PlotTheme(
    palette = expand_palette(colorant"white", wong_palette; lchoices = [57], cchoices = [100]),
    gradient = cgrad(:viridis).colors,
)

_themes[:wong2] = PlotTheme(
    palette = expand_palette(colorant"white", [RGB(0,0,0); wong_palette]; lchoices = [57], cchoices = [100]),
    gradient = cgrad(:viridis).colors,
)
