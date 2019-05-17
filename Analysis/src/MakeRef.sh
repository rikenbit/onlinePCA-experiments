echo "Cortex"
/usr/bin/time -v julia src/makeref.jl \
 ../Data/Cortex/Data.csv \
 ../Data/Cortex/refData.csv >& log/makeref_Cortex.out

echo "Pancreas"
/usr/bin/time -v julia src/makeref.jl \
 ../Data/Pancreas/Data.csv \
 ../Data/Pancreas/refData.csv >& log/makeref_Pancreas.out

echo "Brain"
/usr/bin/time -v julia src/makeref.jl \
 ../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.csv \
 ../Data/Brain/ref1M_neurons_filtered_gene_bc_matrices_h5.csv >& log/makeref_Brain_Chromium.out
