#!/bin/bash

echo "PBMCs"
/usr/bin/time -v julia src/deconv.jl \
 ../Data/PBMCs/refLoading.csv \
 ../Data/PBMCs/t_scaledLogCPMED.csv \
 ../Data/PBMCs/Data.zst \
 ../Data/PBMCs/Downsampling/Eigen_vectors.csv \
 ../Data/PBMCs/Downsampling/Eigen_values.csv >& log/deconv_PBMCs.out

echo "Pancreas"
/usr/bin/time -v julia src/deconv.jl \
 ../Data/Pancreas/refLoading.csv \
 ../Data/Pancreas/t_scaledLogCPMED.csv \
 ../Data/Pancreas/Data.zst \
 ../Data/Pancreas/Downsampling/Eigen_vectors.csv \
 ../Data/Pancreas/Downsampling/Eigen_values.csv >& log/deconv_Pancreas.out

echo "BrainSpinalCord"
/usr/bin/time -v julia src/deconv.jl \
 ../Data/BrainSpinalCord/refLoading.csv \
 ../Data/BrainSpinalCord/t_scaledLogCPMED.csv \
 ../Data/BrainSpinalCord/Data.zst \
 ../Data/BrainSpinalCord/Downsampling/Eigen_vectors.csv \
 ../Data/BrainSpinalCord/Downsampling/Eigen_values.csv >& log/deconv_BrainSpinalCord.out

echo "Brain"
/usr/bin/time -v julia src/deconv.jl \
 ../Data/Brain/refLoading.csv \
 ../Data/Brain/t_scale_log_cpmed_1M_neurons_filtered_gene_bc_matrices_h5.csv \
 ../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst \
 ../Data/Brain/Downsampling/Eigen_vectors.csv \
 ../Data/Brain/Downsampling/Eigen_values.csv >& log/deconv_Brain.out
