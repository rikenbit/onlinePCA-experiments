#!/bin/bash

Step=(0.1 1 10 100 1000 10000 100000 1000000 10000000)
Epoch=(10)

echo "Cortical_SMART"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		sed -e "s|AAAAA|../Data/Cortical_SMART/Data.zst|g" Templates/GD_Template > TMP_GD_Cortical_SMART.sh
		OUT="../Data/Cortical_SMART/GD_step"$i"_epoch"$j
		mkdir -p $OUT
		sed -e "s|BBBBB|$OUT|g" TMP_GD_Cortical_SMART.sh > GD_Cortical_SMART.sh
		sed -e "s|CCCCC|$j|g" GD_Cortical_SMART.sh > TMP_GD_Cortical_SMART.sh
		sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" TMP_GD_Cortical_SMART.sh > GD_Cortical_SMART.sh
		sed -e "s|EEEEE|10|g" GD_Cortical_SMART.sh > TMP_GD_Cortical_SMART.sh
		sed -e "s|FFFFF|$i|g" TMP_GD_Cortical_SMART.sh > GD_Cortical_SMART.sh
		LOG="log/Cortical_SMART_GD_step"$i"_epoch"$j".out"
		sed -e "s|GGGGG|$LOG|g" GD_Cortical_SMART.sh > TMP_GD_Cortical_SMART.sh
		mv TMP_GD_Cortical_SMART.sh GD_Cortical_SMART.sh
		chmod +x GD_Cortical_SMART.sh
		qsub GD_Cortical_SMART.sh
		rm *GD_Cortical_SMART.sh
	done
done

echo "Pancreas"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/GD_Template > TMP_GD_Pancreas.sh
		OUT="../Data/Pancreas/GD_step"$i"_epoch"$j
		mkdir -p $OUT
		sed -e "s|BBBBB|$OUT|g" TMP_GD_Pancreas.sh > GD_Pancreas.sh
		sed -e "s|CCCCC|$j|g" GD_Pancreas.sh > TMP_GD_Pancreas.sh
		sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" TMP_GD_Pancreas.sh > GD_Pancreas.sh
		sed -e "s|EEEEE|12|g" GD_Pancreas.sh > TMP_GD_Pancreas.sh
		sed -e "s|FFFFF|$i|g" TMP_GD_Pancreas.sh > GD_Pancreas.sh
		LOG="log/Pancreas_GD_step"$i"_epoch"$j".out"
		sed -e "s|GGGGG|$LOG|g" GD_Pancreas.sh > TMP_GD_Pancreas.sh
		mv TMP_GD_Pancreas.sh GD_Pancreas.sh
		chmod +x GD_Pancreas.sh
		qsub GD_Pancreas.sh
		rm GD_Pancreas.sh
	done
done

echo "Brain"
for i in ${Step[@]}; do
	for j in ${Epoch[@]}; do
		sed -e "s|AAAAA|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/GD_Template > TMP_GD_Brain.sh
		OUT="../Data/Brain/GD_step"$i"_epoch"$j
		mkdir -p $OUT
		sed -e "s|BBBBB|$OUT|g" TMP_GD_Brain.sh > GD_Brain.sh
		sed -e "s|CCCCC|$j|g" GD_Brain.sh > TMP_GD_Brain.sh
		sed -e "s|DDDDD|../Data/Brain/Feature_LogMeans.csv|g" TMP_GD_Brain.sh > GD_Brain.sh
		sed -e "s|EEEEE|25|g" GD_Brain.sh > TMP_GD_Brain.sh
		sed -e "s|FFFFF|$i|g" TMP_GD_Brain.sh > GD_Brain.sh
		LOG="log/Brain_GD_step"$i"_epoch"$j".out"
		sed -e "s|GGGGG|$LOG|g" GD_Brain.sh > TMP_GD_Brain.sh
		mv TMP_GD_Brain.sh GD_Brain.sh
		chmod +x GD_Brain.sh
		qsub GD_Brain.sh
		rm GD_Brain.sh
	done
done
