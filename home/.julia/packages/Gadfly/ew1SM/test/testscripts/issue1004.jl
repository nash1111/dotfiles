using Gadfly

set_default_plot_size(6inch, 3inch)

plot(x=[0.236033, 0.346517, 0.312707, 0.00790928, 0.488613, 0.210968, 0.951916, 0.999905, 0.251662, 0.986666, 0.555751, 0.437108],
     y=[0.424718, 0.773223, 0.28119, 0.209472, 0.251379, 0.0203749, 0.287702, 0.859512, 0.0769509, 0.640396, 0.873544, 0.278582],
     color=repeat(["a","b","c"], outer=[4]),
     Scale.color_discrete_manual("red","purple","green"))
