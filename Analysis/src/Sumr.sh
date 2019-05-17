#!/bin/bash

LATEST=(`ls -t /home/koki/.julia/packages/OnlinePCA/ | head -1`)
sumr="/home/koki/.julia/packages/OnlinePCA/"$LATEST"/bin/sumr"

echo "Cortex"
/usr/bin/time -v julia $sumr \
--binfile ../Data/Cortex/Data.zst \
--outdir ../Data/Cortex >& log/sumr_Cortex.out

echo "Pancreas"
/usr/bin/time -v julia $sumr \
--binfile ../Data/Pancreas/Data.zst \
--outdir ../Data/Pancreas >& log/sumr_Pancreas.out

echo "Brain"
/usr/bin/time -v julia $sumr \
--binfile ../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst \
--outdir ../Data/Brain/ >& log/sumr_Brain.out
