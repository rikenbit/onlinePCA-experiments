#!/bin/bash

LATEST=(`ls -t /home/koki/.julia/packages/OnlinePCA/ | head -1`)
sumr="/home/koki/.julia/packages/OnlinePCA/"$LATEST"/bin/sumr"

echo "PBMCs"
/usr/bin/time -v julia $sumr \
--binfile ../Data/PBMCs/Data.zst \
--outdir ../Data/PBMCs >& log/sumr_PBMCs.out

echo "Pancreas"
/usr/bin/time -v julia $sumr \
--binfile ../Data/Pancreas/Data.zst \
--outdir ../Data/Pancreas >& log/sumr_Pancreas.out

echo "BrainSpinalCord"
/usr/bin/time -v julia $sumr \
--binfile ../Data/BrainSpinalCord/Data.zst \
--outdir ../Data/BrainSpinalCord >& log/sumr_BrainSpinalCord.out

echo "Brain"
/usr/bin/time -v julia $sumr \
--binfile ../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst \
--outdir ../Data/Brain/ >& log/sumr_Brain.out
