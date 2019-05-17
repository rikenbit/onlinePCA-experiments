#!/bin/bash

echo "Cortex"
sed -e "s|AAAAA|../Data/Cortex/Data.zst|g" Templates/OrthIter_Template > TMP_OrthIter_Cortex.sh
OUT="../Data/Cortex/OrthIter"
mkdir -p $OUT
sed -e "s|BBBBB|../Data/Cortex/OrthIter|g" TMP_OrthIter_Cortex.sh > OrthIter_Cortex.sh
sed -e "s|CCCCC|10|g" OrthIter_Cortex.sh > TMP_OrthIter_Cortex.sh
sed -e "s|DDDDD|../Data/Cortex/Feature_LogMeans.csv|g" TMP_OrthIter_Cortex.sh > OrthIter_Cortex.sh
sed -e "s|EEEEE|10|g" OrthIter_Cortex.sh > TMP_OrthIter_Cortex.sh
sed -e "s|GGGGG|log/Cortex_OrthIter.out|g" TMP_OrthIter_Cortex.sh > OrthIter_Cortex.sh
chmod +x OrthIter_Cortex.sh
qsub OrthIter_Cortex.sh
rm *OrthIter_Cortex.sh

echo "Pancreas"
sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/OrthIter_Template > TMP_OrthIter_Pancreas.sh
OUT="../Data/Pancreas/OrthIter"
mkdir -p $OUT
sed -e "s|BBBBB|$OUT|g" TMP_OrthIter_Pancreas.sh > OrthIter_Pancreas.sh
sed -e "s|CCCCC|10|g" OrthIter_Pancreas.sh > TMP_OrthIter_Pancreas.sh
sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" TMP_OrthIter_Pancreas.sh > OrthIter_Pancreas.sh
sed -e "s|EEEEE|12|g" OrthIter_Pancreas.sh > TMP_OrthIter_Pancreas.sh
sed -e "s|GGGGG|log/Pancreas_OrthIter.out|g" TMP_OrthIter_Pancreas.sh > OrthIter_Pancreas.sh
chmod +x OrthIter_Pancreas.sh
qsub OrthIter_Pancreas.sh
rm *OrthIter_Pancreas.sh

echo "Brain"
sed -e "s|AAAAA|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/OrthIter_Template > TMP_OrthIter_Brain.sh
OUT="../Data/Brain/OrthIter"
mkdir -p $OUT
sed -e "s|BBBBB|$OUT|g" TMP_OrthIter_Brain.sh > OrthIter_Brain.sh
sed -e "s|CCCCC|10|g" OrthIter_Brain.sh > TMP_OrthIter_Brain.sh
sed -e "s|DDDDD|../Data/Brain/Feature_LogMeans.csv|g" TMP_OrthIter_Brain.sh > OrthIter_Brain.sh
sed -e "s|EEEEE|20|g" OrthIter_Brain.sh > TMP_OrthIter_Brain.sh
sed -e "s|GGGGG|log/Brain_OrthIter.out|g" TMP_OrthIter_Brain.sh > OrthIter_Brain.sh
chmod +x OrthIter_Brain.sh
qsub OrthIter_Brain.sh
rm *OrthIter_Brain.sh
