using DelimitedFiles
using MultivariateStats
import Statistics: mean

writecsv(filename::AbstractString, data) = writedlm(filename, data, ',')
readcsv(filename::AbstractString) = readdlm(filename, ',')
readcsv(filename::AbstractString, ::Type{T}) where {T} = readdlm(filename, ',', T)

input = ARGS[1]
output1 = ARGS[2]
output2 = ARGS[3]
dim = ARGS[4]
dim = parse(Int64, dim)

# Data loading
out = readcsv(input)
# Log transformation
out = log10.(out .+ 1)
# PCA
mval = vec(mean(out, dims=2))
res = MultivariateStats.fit(PCA, out, mean=mval, maxoutdim=dim)
# Eigenvectors
writecsv(output1, MultivariateStats.transform(res, out)')
# Eigenvalues
writecsv(output2, principalvars(res))
