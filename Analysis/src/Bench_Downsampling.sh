julia="/home/koki/Software/julia-d386e40c17/bin/julia"

echo "Cortex"
mkdir -p ../Data/Cortex/Downsampling
/usr/bin/time -v $julia src/deconv.jl \
 ../Data/Cortex/refLoading.csv \
 ../Data/Cortex/t_ScaledLogData.csv \
 ../Data/Cortex/Data.zst \
 ../Data/Cortex/Downsampling/Eigen_vectors.csv \
 ../Data/Cortex/Downsampling/Eigen_values.csv >& log/downsampling_Cortex.out

echo "Pancreas"
mkdir -p ../Data/Pancreas/Downsampling
/usr/bin/time -v $julia src/deconv.jl \
 ../Data/Pancreas/refLoading.csv \
 ../Data/Pancreas/t_ScaledLogData.csv \
 ../Data/Pancreas/Data.zst \
 ../Data/Pancreas/Downsampling/Eigen_vectors.csv \
 ../Data/Pancreas/Downsampling/Eigen_values.csv >& log/downsampling_Pancreas.out

echo "Brain"
mkdir -p ../Data/Brain/Downsampling
/usr/bin/time -v $julia src/deconv.jl \
 ../Data/Brain/refLoading.csv \
 ../Data/Brain/t_scale_log_1M_neurons_filtered_gene_bc_matrices_h5.csv \
 ../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst \
 ../Data/Brain/Downsampling/Eigen_vectors.csv \
 ../Data/Brain/Downsampling/Eigen_values.csv >& log/downsampling_Brain.out
