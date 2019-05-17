using DelimitedFiles
using Arpack
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
# Centering
out = out .- vec(mean(out, dims=2))
# PCA
res = svds(out, nsv=dim)[1]
# Eigenvectors
writecsv(output1, res.Vt')
# Eigenvalues
writecsv(output2, res.S.*res.S/size(res.Vt)[2])
