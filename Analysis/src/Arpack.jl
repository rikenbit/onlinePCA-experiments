using DelimitedFiles
using Arpack
import Statistics: mean, median

writecsv(filename::AbstractString, data) = writedlm(filename, data, ',')
readcsv(filename::AbstractString) = readdlm(filename, ',')
readcsv(filename::AbstractString, ::Type{T}) where {T} = readdlm(filename, ',', T)

input = ARGS[1]
output1 = ARGS[2]
output2 = ARGS[3]
dim = ARGS[4]

dim = parse(Int64, dim)
println(input)
println(output1)
println(output2)
println(dim)

# Data loading
out = readcsv(input)
# Library size
libsize = sum(out, dims=1)
# CPMED
out = median(libsize) .* (out ./ libsize)
# Log transformation
out = log10.(out .+ 1)
# Centering
out = out .- vec(mean(out, dims=2))
# PCA
res = svds(out, nsv=dim)[1]
# Eigenvectors
writecsv(output1, res.Vt')
# Eigenvalues
writecsv(output2, res.S.*res.S/size(res.Vt)[2])
