#!/bin/bash

echo "PBMCs"
/usr/bin/time -v julia src/makeref.jl \
 ../Data/PBMCs/Data.csv \
 ../Data/PBMCs/refData.csv >& log/makeref_PBMCs.out

echo "Pancreas"
/usr/bin/time -v julia src/makeref.jl \
 ../Data/Pancreas/Data.csv \
 ../Data/Pancreas/refData.csv >& log/makeref_Pancreas.out

echo "BrainSpinalCord"
/usr/bin/time -v julia src/makeref.jl \
 ../Data/BrainSpinalCord/Data.csv \
 ../Data/BrainSpinalCord/refData.csv >& log/makeref_BrainSpinalCord.out

echo "Brain"
/usr/bin/time -v julia src/makeref.jl \
 ../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.csv \
 ../Data/Brain/ref1M_neurons_filtered_gene_bc_matrices_h5.csv >& log/makeref_Brain.out
