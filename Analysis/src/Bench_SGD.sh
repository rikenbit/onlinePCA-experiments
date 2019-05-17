#!/bin/bash

Step=(0.1 1 10 100 1000 10000 100000 1000000 10000000)
Epoch=(10)

echo "Cortical_SMART"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		sed -e "s|AAAAA|../Data/Cortical_SMART/Data.zst|g" Templates/SGD_Template > TMP_SGD_Cortical_SMART.sh
		OUT="../Data/Cortical_SMART/SGD_step"$i"_epoch"$j
		mkdir -p $OUT
		sed -e "s|BBBBB|$OUT|g" TMP_SGD_Cortical_SMART.sh > SGD_Cortical_SMART.sh
		sed -e "s|CCCCC|$j|g" SGD_Cortical_SMART.sh > TMP_SGD_Cortical_SMART.sh
		sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" TMP_SGD_Cortical_SMART.sh > SGD_Cortical_SMART.sh
		sed -e "s|EEEEE|10|g" SGD_Cortical_SMART.sh > TMP_SGD_Cortical_SMART.sh
		sed -e "s|FFFFF|$i|g" TMP_SGD_Cortical_SMART.sh > SGD_Cortical_SMART.sh
		LOG="log/Cortical_SMART_SGD_step"$i"_epoch"$j".out"
		sed -e "s|GGGGG|$LOG|g" SGD_Cortical_SMART.sh > TMP_SGD_Cortical_SMART.sh
		mv TMP_SGD_Cortical_SMART.sh SGD_Cortical_SMART.sh
		chmod +x SGD_Cortical_SMART.sh
		qsub SGD_Cortical_SMART.sh
		rm *SGD_Cortical_SMART.sh
	done
done

echo "Pancreas"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/SGD_Template > TMP_SGD_Pancreas.sh
		OUT="../Data/Pancreas/SGD_step"$i"_epoch"$j
		mkdir -p $OUT
		sed -e "s|BBBBB|$OUT|g" TMP_SGD_Pancreas.sh > SGD_Pancreas.sh
		sed -e "s|CCCCC|$j|g" SGD_Pancreas.sh > TMP_SGD_Pancreas.sh
		sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" TMP_SGD_Pancreas.sh > SGD_Pancreas.sh
		sed -e "s|EEEEE|12|g" SGD_Pancreas.sh > TMP_SGD_Pancreas.sh
		sed -e "s|FFFFF|$i|g" TMP_SGD_Pancreas.sh > SGD_Pancreas.sh
		LOG="log/Pancreas_SGD_step"$i"_epoch"$j".out"
		sed -e "s|GGGGG|$LOG|g" SGD_Pancreas.sh > TMP_SGD_Pancreas.sh
		mv TMP_SGD_Pancreas.sh SGD_Pancreas.sh
		chmod +x SGD_Pancreas.sh
		qsub SGD_Pancreas.sh
		rm SGD_Pancreas.sh
	done
done

echo "Brain"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		sed -e "s|AAAAA|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/SGD_Template > TMP_SGD_Brain.sh
		OUT="../Data/Brain/SGD_step"$i"_epoch"$j
		mkdir -p $OUT
		sed -e "s|BBBBB|$OUT|g" TMP_SGD_Brain.sh > SGD_Brain.sh
		sed -e "s|CCCCC|$j|g" SGD_Brain.sh > TMP_SGD_Brain.sh
		sed -e "s|DDDDD|../Data/Brain/Feature_LogMeans.csv|g" TMP_SGD_Brain.sh > SGD_Brain.sh
		sed -e "s|EEEEE|25|g" SGD_Brain.sh > TMP_SGD_Brain.sh
		sed -e "s|FFFFF|$i|g" TMP_SGD_Brain.sh > SGD_Brain.sh
		LOG="log/Brain_SGD_step"$i"_epoch"$j".out"
		sed -e "s|GGGGG|$LOG|g" SGD_Brain.sh > TMP_SGD_Brain.sh
		mv TMP_SGD_Brain.sh SGD_Brain.sh
		chmod +x SGD_Brain.sh
		qsub SGD_Brain.sh
		rm SGD_Brain.sh
	done
done
