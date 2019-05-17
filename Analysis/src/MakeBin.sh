julia="/home/koki/Software/julia-1.0.1/bin/julia"
LATEST=(`ls -t /home/koki/.julia/packages/OnlinePCA/ | head -1`)
csv2bin="/home/koki/.julia/packages/OnlinePCA/"$LATEST"/bin/csv2bin"

#####################################################
##################### 人工データ #######################
#####################################################
Cells=('100' '1000' '10000' '100000' '1000000' '10000000')
Genes=('100' '1000' '10000')

for ((i=0; i < ${#Cells[@]}; i++)); do
	for ((j=0; j < ${#Genes[@]}; j++)); do
		echo ${Genes[$j]}" × "${Cells[$i]}
		CSVFILE="/data2/koki/ICCIPCA/Data/"${Cells[$i]}"Cell/1Class/"${Genes[$j]}"Gene/Data.csv"
		BINFILE="/data2/koki/ICCIPCA/Data/"${Cells[$i]}"Cell/1Class/"${Genes[$j]}"Gene/Data.zst"
		/usr/bin/time -v $julia $csv2bin --csvfile $CSVFILE --binfile $BINFILE >& "/data2/koki/ICCIPCA/Analysis/log/csv2bin_"${Genes[$j]}_${Cells[$i]}".out"
	done
done

#####################################################
##################### 実データ #######################
#####################################################
# Cortical（大脳皮質、21614遺伝子 × 1679細胞、21クラス）
echo "Cortical"
/usr/bin/time -v $julia $csv2bin \
--csvfile /data2/koki/ICCIPCA/Data/Cortical_SMART/Data.csv \
--binfile /data2/koki/ICCIPCA/Data/Cortical_SMART/Data.zst >& "/data2/koki/ICCIPCA/Analysis/log/csv2bin_Cortical_SMART.out"

# inDrop（膵臓、17499 × 8569、14クラス）
echo "inDrop"
/usr/bin/time -v $julia $csv2bin \
--csvfile /data2/koki/ICCIPCA/Data/Pancreas_inDrop/Data.csv \
--binfile /data2/koki/ICCIPCA/Data/Pancreas_inDrop/Data.zst >& "/data2/koki/ICCIPCA/Analysis/log/csv2bin_Pancreas_inDrop.out"

# Chromium（マウス脳、1306127細胞、23771遺伝子、60クラス）
echo "Chromium"
/usr/bin/time -v $julia $csv2bin \
--csvfile /data/koki/TestData/single_cell/10XGenomics/1M_neurons/1M_neurons_filtered_gene_bc_matrices_h5.csv \
--binfile /data/koki/TestData/single_cell/10XGenomics/1M_neurons/1M_neurons_filtered_gene_bc_matrices_h5.zst >& "/data2/koki/ICCIPCA/Analysis/log/csv2bin_Brain_Chromium.out"
