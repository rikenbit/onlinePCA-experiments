#!/bin/bash

julia="/home/koki/Software/julia-1.0.1/bin/julia"
LATEST=(`ls -t /home/koki/.julia/packages/OnlinePCA/ | head -1`)
sumr="/home/koki/.julia/packages/OnlinePCA/"$LATEST"/bin/sumr"

#####################################################
##################### 人工データ #######################
#####################################################
Cells=('100' '1000' '10000' '100000' '1000000' '10000000')
Genes=('100' '1000' '10000')

for ((i=0; i < ${#Cells[@]}; i++)); do
	for ((j=0; j < ${#Genes[@]}; j++)); do
		echo ${Genes[$j]}" × "${Cells[$i]}
		BINFILE="/data2/koki/ICCIPCA/Data/"${Cells[$i]}"Cell/1Class/"${Genes[$j]}"Gene/Data.zst"
		OUT="/data2/koki/ICCIPCA/Data/"${Cells[$i]}"Cell/1Class/"${Genes[$j]}"Gene"
		/usr/bin/time -v $julia $sumr --binfile $BINFILE --outdir $OUT >& "/data2/koki/ICCIPCA/Analysis/log/sumr_"${Genes[$j]}_${Cells[$i]}".out"
	done
done

#####################################################
##################### 実データ #######################
#####################################################
# Cortical（大脳皮質、21614遺伝子 × 1679細胞、21クラス、さらに亜集団）
echo "Cortical"
/usr/bin/time -v $julia $sumr \
--binfile /data2/koki/ICCIPCA/Data/Cortical_SMART/Data.zst \
--outdir /data2/koki/ICCIPCA/Data/Cortical_SMART >& "/data2/koki/ICCIPCA/Analysis/log/sumr_Cortical_SMART.out"

# inDrop（膵臓、17499 × 8569、14クラス）
echo "inDrop"
/usr/bin/time -v $julia $sumr \
--binfile /data2/koki/ICCIPCA/Data/Pancreas_inDrop/Data.zst \
--outdir /data2/koki/ICCIPCA/Data/Pancreas_inDrop >& "/data2/koki/ICCIPCA/Analysis/log/sumr_Pancreas_inDrop.out"

# Chromium（マウス脳、1306127細胞、23771遺伝子、60クラス）
echo "Chromium"
/usr/bin/time -v $julia $sumr \
--binfile /data/koki/TestData/single_cell/10XGenomics/1M_neurons/1M_neurons_filtered_gene_bc_matrices_h5.zst \
--outdir /data/koki/TestData/single_cell/10XGenomics/1M_neurons >& "/data2/koki/ICCIPCA/Analysis/log/sumr_Brain_Chromium.out"
