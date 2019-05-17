using CSV
using CodecZstd

# input1 = "../Data/Cortical_SMART/refLoading.csv"
# input2 = "../Data/Cortical_SMART/t_ScaledLogData.csv"
# input3 = "../Data/Cortical_SMART/Data.zst"

# input1="/data/koki/TestData/single_cell/10XGenomics/1M_neurons/refLoading.csv"
# input2="/data/koki/TestData/single_cell/10XGenomics/1M_neurons/t_scale_log_1M_neurons_filtered_gene_bc_matrices_h5.csv"
# input3="/data/koki/TestData/single_cell/10XGenomics/1M_neurons/1M_neurons_filtered_gene_bc_matrices_h5.zst"
# output1="/data2/koki/ICCIPCA/Data/Brain_Chromium/Deconvolution/Eigen_vectors.csv"
# output2="/data2/koki/ICCIPCA/Data/Brain_Chromium/Deconvolution/Eigen_values.csv"

input1 = ARGS[1]
input2 = ARGS[2]
input3 = ARGS[3]
output1 = ARGS[4]
output2 = ARGS[5]

# Return N, M
function nm(input::AbstractString)
    N = zeros(UInt32, 1)
    M = zeros(UInt32, 1)
    open(input) do file
        stream = ZstdDecompressorStream(file)
        read!(stream, N)
        read!(stream, M)
        close(stream)
    end
    return N[], M[]
end

# Loading
println("Loading...")
# # 8.590286 seconds (6.13 M allocations: 310.771 MiB, 1.01% gc time)
# @time loading = CSV.read(input1, datarow=1)
# 0.533292 seconds (691.03 k allocations: 26.640 MiB, 8.03% gc time)
loading = readcsv(input1)

# Setting
N, M = nm(input3)
N = Int(N)
M = Int(M)
dim = size(loading)[2]
W = zeros(M, dim)


# Split
println("Spliting...")
open(input2 , "r") do f
	counter = 0
    while !eof(f)
        counter += 1
        print("\r", counter)
        xx = readline(f)
        xx = split(xx, ",") # Splited as Character
        # Assume input data is Integer
        x = zeros(Float64, N)
        for i=1:N
            x[i] = parse(Float64, xx[i])
        end
        W[counter, :] = x' * loading
        if counter == M
            break
        end
    end
end

# Eigen value
println("Eigen value...")
σ = Float32[norm(W[:, x]) for x=1:dim]
for n = 1:dim
    W[:, n] ./= σ[n]
end
λ = σ .* σ / M

# Sort by Eigen value
println("Sorting...")
idx = sortperm(λ, rev=true)
W .= W[:, idx]
λ .= λ[idx]

# Output
println("Outputing...")
writedlm(output1, W, ',')
writedlm(output2, λ, ',')
