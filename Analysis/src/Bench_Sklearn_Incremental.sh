#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/CPMED.csv|g" Templates/Sklearn_Incremental_Template > TMP_Sklearn_Incremental_PBMCs.sh
mkdir -p ../Data/PBMCs/Sklearn_Incremental
sed -e "s|YYYYY|../Data/PBMCs/Sklearn_Incremental|g" TMP_Sklearn_Incremental_PBMCs.sh > Sklearn_Incremental_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_Sklearn_Incremental.out|g" Sklearn_Incremental_PBMCs.sh > TMP_Sklearn_Incremental_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_Sklearn_Incremental_PBMCs.sh > Sklearn_Incremental_PBMCs.sh
qsub Sklearn_Incremental_PBMCs.sh
rm *Sklearn_Incremental_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/CPMED.csv|g" Templates/Sklearn_Incremental_Template > TMP_Sklearn_Incremental_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_Incremental
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_Incremental|g" TMP_Sklearn_Incremental_Pancreas.sh > Sklearn_Incremental_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_Incremental.out|g" Sklearn_Incremental_Pancreas.sh > TMP_Sklearn_Incremental_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_Incremental_Pancreas.sh > Sklearn_Incremental_Pancreas.sh
qsub Sklearn_Incremental_Pancreas.sh
rm *Sklearn_Incremental_Pancreas.sh

echo "BrainSpinalCord"
sed -e "s|XXXXX|../Data/BrainSpinalCord/CPMED.csv|g" Templates/Sklearn_Incremental_Template > TMP_Sklearn_Incremental_BrainSpinalCord.sh
mkdir -p ../Data/BrainSpinalCord/Sklearn_Incremental
sed -e "s|YYYYY|../Data/BrainSpinalCord/Sklearn_Incremental|g" TMP_Sklearn_Incremental_BrainSpinalCord.sh > Sklearn_Incremental_BrainSpinalCord.sh
sed -e "s|ZZZZZ|log/BrainSpinalCord_Sklearn_Incremental.out|g" Sklearn_Incremental_BrainSpinalCord.sh > TMP_Sklearn_Incremental_BrainSpinalCord.sh
sed -e "s|SSSSS|16|g" TMP_Sklearn_Incremental_BrainSpinalCord.sh > Sklearn_Incremental_BrainSpinalCord.sh
qsub Sklearn_Incremental_BrainSpinalCord.sh
rm *Sklearn_Incremental_BrainSpinalCord.sh

echo "Brain"
sed -e "s|XXXXX|../Data/Brain/cpmed_1M_neurons_filtered_gene_bc_matrices_h5.csv|g" Templates/Sklearn_Incremental_Template > TMP_Sklearn_Incremental_Brain.sh
mkdir -p ../Data/Brain/Sklearn_Incremental
sed -e "s|YYYYY|../Data/Brain/Sklearn_Incremental|g" TMP_Sklearn_Incremental_Brain.sh > Sklearn_Incremental_Brain.sh
sed -e "s|ZZZZZ|log/Brain_Sklearn_Incremental.out|g" Sklearn_Incremental_Brain.sh > TMP_Sklearn_Incremental_Brain.sh
sed -e "s|SSSSS|20|g" TMP_Sklearn_Incremental_Brain.sh > Sklearn_Incremental_Brain.sh
qsub Sklearn_Incremental_Brain.sh
rm *Sklearn_Incremental_Brain.sh
