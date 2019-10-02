#!/bin/bash

Step=(0.1 1 10 100 1000 10000 100000 1000000 10000000)
Epoch=(10)

echo "PBMCs"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		OUT="../Data/PBMCs/SGD_step"$i"_epoch"$j
		LOG="log/PBMCs_SGD_step"$i"_epoch"$j".out"
		mkdir -p $OUT

		sed -e "s|AAAAA|../Data/PBMCs/Data.zst|g" Templates/SGD_Template > TMP_SGD_PBMCs.sh
		sed -e "s|BBBBB|$OUT|g" TMP_SGD_PBMCs.sh > SGD_PBMCs.sh
		sed -e "s|CCCCC|$j|g" SGD_PBMCs.sh > TMP_SGD_PBMCs.sh
		sed -e "s|DDDDD|../Data/PBMCs/Feature_LogMeans.csv|g" TMP_SGD_PBMCs.sh > SGD_PBMCs.sh
		sed -e "s|EEEEE|../Data/PBMCs/Sample_NoCounts.csv|g" SGD_PBMCs.sh > TMP_SGD_PBMCs.sh
		sed -e "s|FFFFF|3|g" TMP_SGD_PBMCs.sh > SGD_PBMCs.sh
		sed -e "s|GGGGG|$i|g" SGD_PBMCs.sh > TMP_SGD_PBMCs.sh
		sed -e "s|HHHHH|11629|g" TMP_SGD_PBMCs.sh > SGD_PBMCs.sh
		sed -e "s|IIIII|$LOG|g" SGD_PBMCs.sh > TMP_SGD_PBMCs.sh

		mv TMP_SGD_PBMCs.sh SGD_PBMCs.sh
		chmod +x SGD_PBMCs.sh
		qsub SGD_PBMCs.sh
		rm *SGD_PBMCs.sh
	done
done

echo "Pancreas"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		OUT="../Data/Pancreas/SGD_step"$i"_epoch"$j
		LOG="log/Pancreas_SGD_step"$i"_epoch"$j".out"
		mkdir -p $OUT

		sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/SGD_Template > TMP_SGD_Pancreas.sh
		sed -e "s|BBBBB|$OUT|g" TMP_SGD_Pancreas.sh > SGD_Pancreas.sh
		sed -e "s|CCCCC|$j|g" SGD_Pancreas.sh > TMP_SGD_Pancreas.sh
		sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" TMP_SGD_Pancreas.sh > SGD_Pancreas.sh
		sed -e "s|EEEEE|../Data/Pancreas/Sample_NoCounts.csv|g" SGD_Pancreas.sh > TMP_SGD_Pancreas.sh
		sed -e "s|FFFFF|12|g" TMP_SGD_Pancreas.sh > SGD_Pancreas.sh
		sed -e "s|GGGGG|$i|g" SGD_Pancreas.sh > TMP_SGD_Pancreas.sh
		sed -e "s|HHHHH|5075|g" TMP_SGD_Pancreas.sh > SGD_Pancreas.sh
		sed -e "s|IIIII|$LOG|g" SGD_Pancreas.sh > TMP_SGD_Pancreas.sh

		mv TMP_SGD_Pancreas.sh SGD_Pancreas.sh
		chmod +x SGD_Pancreas.sh
		qsub SGD_Pancreas.sh
		rm *SGD_Pancreas.sh
	done
done

echo "BrainSpinalCord"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		OUT="../Data/BrainSpinalCord/SGD_step"$i"_epoch"$j
		LOG="log/BrainSpinalCord_SGD_step"$i"_epoch"$j".out"
		mkdir -p $OUT

		sed -e "s|AAAAA|../Data/BrainSpinalCord/Data.zst|g" Templates/SGD_Template > TMP_SGD_BrainSpinalCord.sh
		sed -e "s|BBBBB|$OUT|g" TMP_SGD_BrainSpinalCord.sh > SGD_BrainSpinalCord.sh
		sed -e "s|CCCCC|$j|g" SGD_BrainSpinalCord.sh > TMP_SGD_BrainSpinalCord.sh
		sed -e "s|DDDDD|../Data/BrainSpinalCord/Feature_LogMeans.csv|g" TMP_SGD_BrainSpinalCord.sh > SGD_BrainSpinalCord.sh
		sed -e "s|EEEEE|../Data/BrainSpinalCord/Sample_NoCounts.csv|g" SGD_BrainSpinalCord.sh > TMP_SGD_BrainSpinalCord.sh
		sed -e "s|FFFFF|16|g" TMP_SGD_BrainSpinalCord.sh > SGD_BrainSpinalCord.sh
		sed -e "s|GGGGG|$i|g" SGD_BrainSpinalCord.sh > TMP_SGD_BrainSpinalCord.sh
		sed -e "s|HHHHH|995|g" TMP_SGD_BrainSpinalCord.sh > SGD_BrainSpinalCord.sh
		sed -e "s|IIIII|$LOG|g" SGD_BrainSpinalCord.sh > TMP_SGD_BrainSpinalCord.sh

		mv TMP_SGD_BrainSpinalCord.sh SGD_BrainSpinalCord.sh
		chmod +x SGD_BrainSpinalCord.sh
		qsub SGD_BrainSpinalCord.sh
		rm *SGD_BrainSpinalCord.sh
	done
done

echo "Brain"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		OUT="../Data/Brain/SGD_step"$i"_epoch"$j
		LOG="log/Brain_SGD_step"$i"_epoch"$j".out"
		mkdir -p $OUT

		sed -e "s|AAAAA|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/SGD_Template > TMP_SGD_Brain.sh
		sed -e "s|BBBBB|$OUT|g" TMP_SGD_Brain.sh > SGD_Brain.sh
		sed -e "s|CCCCC|$j|g" SGD_Brain.sh > TMP_SGD_Brain.sh
		sed -e "s|DDDDD|../Data/Brain/Feature_LogMeans.csv|g" TMP_SGD_Brain.sh > SGD_Brain.sh
		sed -e "s|EEEEE|../Data/Brain/Sample_NoCounts.csv|g" SGD_Brain.sh > TMP_SGD_Brain.sh
		sed -e "s|FFFFF|20|g" TMP_SGD_Brain.sh > SGD_Brain.sh
		sed -e "s|GGGGG|$i|g" SGD_Brain.sh > TMP_SGD_Brain.sh
		sed -e "s|HHHHH|4170|g" TMP_SGD_Brain.sh > SGD_Brain.sh
		sed -e "s|IIIII|$LOG|g" SGD_Brain.sh > TMP_SGD_Brain.sh

		mv TMP_SGD_Brain.sh SGD_Brain.sh
		chmod +x SGD_Brain.sh
		qsub SGD_Brain.sh
		rm *SGD_Brain.sh
	done
done
