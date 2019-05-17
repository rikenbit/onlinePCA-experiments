#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/Sklearn_Incremental_Template > TMP_Sklearn_Incremental_Cortex.sh
mkdir -p ../Data/Cortex/Sklearn_Incremental
sed -e "s|YYYYY|../Data/Cortex/Sklearn_Incremental|g" TMP_Sklearn_Incremental_Cortex.sh > Sklearn_Incremental_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_Sklearn_Incremental.out|g" Sklearn_Incremental_Cortex.sh > TMP_Sklearn_Incremental_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_Sklearn_Incremental_Cortex.sh > Sklearn_Incremental_Cortex.sh
qsub Sklearn_Incremental_Cortex.sh
rm *Sklearn_Incremental_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Sklearn_Incremental_Template > TMP_Sklearn_Incremental_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_Incremental
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_Incremental|g" TMP_Sklearn_Incremental_Pancreas.sh > Sklearn_Incremental_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_Incremental.out|g" Sklearn_Incremental_Pancreas.sh > TMP_Sklearn_Incremental_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_Incremental_Pancreas.sh > Sklearn_Incremental_Pancreas.sh
qsub Sklearn_Incremental_Pancreas.sh
rm *Sklearn_Incremental_Pancreas.sh

echo "Brain"
sed -e "s|XXXXX|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.csv|g" Templates/Sklearn_Incremental_Template > TMP_Sklearn_Incremental_Brain.sh
mkdir -p ../Data/Brain/Sklearn_Incremental
sed -e "s|YYYYY|../Data/Brain/Sklearn_Incremental|g" TMP_Sklearn_Incremental_Brain.sh > Sklearn_Incremental_Brain.sh
sed -e "s|ZZZZZ|log/Brain_Sklearn_Incremental.out|g" Sklearn_Incremental_Brain.sh > TMP_Sklearn_Incremental_Brain.sh
sed -e "s|SSSSS|20|g" TMP_Sklearn_Incremental_Brain.sh > Sklearn_Incremental_Brain.sh
qsub Sklearn_Incremental_Brain.sh
rm *Sklearn_Incremental_Brain.sh
