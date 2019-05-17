using Pkg

Pkg.add("MultivariateStats")
Pkg.add("Arpack")
Pkg.add("StatsBase")
Pkg.add("CSV")
Pkg.add("DelimitedFiles")
Pkg.add("Statistics")
Pkg.add(Pkg.PackageSpec(;url="https://github.com/rikenbit/OnlinePCA.jl", version="0.1.0"))


Pkg.add(Pkg.PackageSpec(;url="https://github.com/rikenbit/OnlinePCA.jl", rev="master"))
