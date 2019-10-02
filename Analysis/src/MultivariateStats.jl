using DelimitedFiles
using MultivariateStats
import Statistics: mean, median

writecsv(filename::AbstractString, data) = writedlm(filename, data, ',')
readcsv(filename::AbstractString) = readdlm(filename, ',')
readcsv(filename::AbstractString, ::Type{T}) where {T} = readdlm(filename, ',', T)

input = ARGS[1]
output1 = ARGS[2]
output2 = ARGS[3]
dim = ARGS[4]

# input = "/data2/koki/ICCIPCA/Data/Cortical_SMART/Data.csv"
# output1 = "/data2/koki/ICCIPCA/Data/Cortical_SMART/MultivariateStats/Eigen_vectors.csv"
# output2 = "/data2/koki/ICCIPCA/Data/Cortical_SMART/MultivariateStats/Eigen_values.csv"
# dim = "10"

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
# PCA
mval = vec(mean(out, dims=2))
res = MultivariateStats.fit(PCA, out, mean=mval, maxoutdim=dim)
# Eigenvectors
writecsv(output1, MultivariateStats.transform(res, out)')
# Eigenvalues
writecsv(output2, principalvars(res))
