using OnlinePCA
using DelimitedFiles: writedlm
writecsv(filename::AbstractString, data) = writedlm(filename, data, ',')

# Setting
chunksize = parse(Int64, ARGS[1])
outdir = ARGS[2]

# Randomized SVD
out = OnlinePCA.tenxpca(
	tenxfile="../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.h5",
	rowmeanlist="../Data/Brain/Feature_LogMeans.csv",
	scale="log",
	dim=20,
	niter=3,
	chunksize=chunksize,
	group="mm10")

# Output
writecsv(joinpath(outdir, "Eigen_vectors.csv"), out[1])
writecsv(joinpath(outdir, "Eigen_values.csv"), out[2])
writecsv(joinpath(outdir, "Loadings.csv"), out[3])
