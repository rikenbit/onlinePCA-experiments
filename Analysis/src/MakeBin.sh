#!/bin/bash

LATEST=(`ls -t ~/.julia/packages/OnlinePCA/ | head -1`)
csv2bin="~/.julia/packages/OnlinePCA/"$LATEST"/bin/csv2bin"

echo "Cortex"
/usr/bin/time -v julia $csv2bin \
--csvfile ../Data/Cortex/Data.csv \
--binfile ../Data/Cortex/Data.zst >& log/csv2bin_Cortex.out

echo "Pancreas"
/usr/bin/time -v julia $csv2bin \
--csvfile ../Data/Pancreas/Data.csv \
--binfile ../Data/Pancreas/Data.zst >& log/csv2bin_Pancreas.out

echo "Brain"
/usr/bin/time -v julia $csv2bin \
--csvfile ../Data/1M_neurons_filtered_gene_bc_matrices_h5.csv \
--binfile ../Data/1M_neurons_filtered_gene_bc_matrices_h5.zst >& log/csv2bin_Brain.out
