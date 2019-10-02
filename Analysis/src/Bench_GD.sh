#!/bin/bash

Step=(0.1 1 10 100 1000 10000 100000 1000000 10000000)
Epoch=(10)

echo "PBMCs"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		OUT="../Data/PBMCs/GD_step"$i"_epoch"$j
		LOG="log/PBMCs_GD_step"$i"_epoch"$j".out"
		mkdir -p $OUT

		sed -e "s|AAAAA|../Data/PBMCs/Data.zst|g" Templates/GD_Template > TMP_GD_PBMCs.sh
		sed -e "s|BBBBB|$OUT|g" TMP_GD_PBMCs.sh > GD_PBMCs.sh
		sed -e "s|CCCCC|$j|g" GD_PBMCs.sh > TMP_GD_PBMCs.sh
		sed -e "s|DDDDD|../Data/PBMCs/Feature_LogMeans.csv|g" TMP_GD_PBMCs.sh > GD_PBMCs.sh
		sed -e "s|EEEEE|../Data/PBMCs/Sample_NoCounts.csv|g" GD_PBMCs.sh > TMP_GD_PBMCs.sh
		sed -e "s|FFFFF|3|g" TMP_GD_PBMCs.sh > GD_PBMCs.sh
		sed -e "s|GGGGG|$i|g" GD_PBMCs.sh > TMP_GD_PBMCs.sh
		sed -e "s|HHHHH|11629|g" TMP_GD_PBMCs.sh > GD_PBMCs.sh
		sed -e "s|IIIII|$LOG|g" GD_PBMCs.sh > TMP_GD_PBMCs.sh

		mv TMP_GD_PBMCs.sh GD_PBMCs.sh
		chmod +x GD_PBMCs.sh
		qsub GD_PBMCs.sh
		rm *GD_PBMCs.sh
	done
done

echo "Pancreas"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		OUT="../Data/Pancreas/GD_step"$i"_epoch"$j
		LOG="log/Pancreas_GD_step"$i"_epoch"$j".out"
		mkdir -p $OUT

		sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/GD_Template > TMP_GD_Pancreas.sh
		sed -e "s|BBBBB|$OUT|g" TMP_GD_Pancreas.sh > GD_Pancreas.sh
		sed -e "s|CCCCC|$j|g" GD_Pancreas.sh > TMP_GD_Pancreas.sh
		sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" TMP_GD_Pancreas.sh > GD_Pancreas.sh
		sed -e "s|EEEEE|../Data/Pancreas/Sample_NoCounts.csv|g" GD_Pancreas.sh > TMP_GD_Pancreas.sh
		sed -e "s|FFFFF|12|g" TMP_GD_Pancreas.sh > GD_Pancreas.sh
		sed -e "s|GGGGG|$i|g" GD_Pancreas.sh > TMP_GD_Pancreas.sh
		sed -e "s|HHHHH|5075|g" TMP_GD_Pancreas.sh > GD_Pancreas.sh
		sed -e "s|IIIII|$LOG|g" GD_Pancreas.sh > TMP_GD_Pancreas.sh

		mv TMP_GD_Pancreas.sh GD_Pancreas.sh
		chmod +x GD_Pancreas.sh
		qsub GD_Pancreas.sh
		rm *GD_Pancreas.sh
	done
done

echo "BrainSpinalCord"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		OUT="../Data/BrainSpinalCord/GD_step"$i"_epoch"$j
		LOG="log/BrainSpinalCord_GD_step"$i"_epoch"$j".out"
		mkdir -p $OUT

		sed -e "s|AAAAA|../Data/BrainSpinalCord/Data.zst|g" Templates/GD_Template > TMP_GD_BrainSpinalCord.sh
		sed -e "s|BBBBB|$OUT|g" TMP_GD_BrainSpinalCord.sh > GD_BrainSpinalCord.sh
		sed -e "s|CCCCC|$j|g" GD_BrainSpinalCord.sh > TMP_GD_BrainSpinalCord.sh
		sed -e "s|DDDDD|../Data/BrainSpinalCord/Feature_LogMeans.csv|g" TMP_GD_BrainSpinalCord.sh > GD_BrainSpinalCord.sh
		sed -e "s|EEEEE|../Data/BrainSpinalCord/Sample_NoCounts.csv|g" GD_BrainSpinalCord.sh > TMP_GD_BrainSpinalCord.sh
		sed -e "s|FFFFF|16|g" TMP_GD_BrainSpinalCord.sh > GD_BrainSpinalCord.sh
		sed -e "s|GGGGG|$i|g" GD_BrainSpinalCord.sh > TMP_GD_BrainSpinalCord.sh
		sed -e "s|HHHHH|995|g" TMP_GD_BrainSpinalCord.sh > GD_BrainSpinalCord.sh
		sed -e "s|IIIII|$LOG|g" GD_BrainSpinalCord.sh > TMP_GD_BrainSpinalCord.sh

		mv TMP_GD_BrainSpinalCord.sh GD_BrainSpinalCord.sh
		chmod +x GD_BrainSpinalCord.sh
		qsub GD_BrainSpinalCord.sh
		rm *GD_BrainSpinalCord.sh
	done
done

echo "Brain"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		OUT="../Data/Brain/GD_step"$i"_epoch"$j
		LOG="log/Brain_GD_step"$i"_epoch"$j".out"
		mkdir -p $OUT

		sed -e "s|AAAAA|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/GD_Template > TMP_GD_Brain.sh
		sed -e "s|BBBBB|$OUT|g" TMP_GD_Brain.sh > GD_Brain.sh
		sed -e "s|CCCCC|$j|g" GD_Brain.sh > TMP_GD_Brain.sh
		sed -e "s|DDDDD|../Data/Brain/Feature_LogMeans.csv|g" TMP_GD_Brain.sh > GD_Brain.sh
		sed -e "s|EEEEE|../Data/Brain/Sample_NoCounts.csv|g" GD_Brain.sh > TMP_GD_Brain.sh
		sed -e "s|FFFFF|20|g" TMP_GD_Brain.sh > GD_Brain.sh
		sed -e "s|GGGGG|$i|g" GD_Brain.sh > TMP_GD_Brain.sh
		sed -e "s|HHHHH|4170|g" TMP_GD_Brain.sh > GD_Brain.sh
		sed -e "s|IIIII|$LOG|g" GD_Brain.sh > TMP_GD_Brain.sh

		mv TMP_GD_Brain.sh GD_Brain.sh
		chmod +x GD_Brain.sh
		qsub GD_Brain.sh
		rm *GD_Brain.sh
	done
done
