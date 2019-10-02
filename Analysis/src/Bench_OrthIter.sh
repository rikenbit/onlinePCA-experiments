#!/bin/bash

echo "PBMCs"
OUT="../Data/PBMCs/OrthIter"
LOG="log/PBMCs_OrthIter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/PBMCs/Data.zst|g" Templates/OrthIter_Template > OrthIter_PBMCs.sh
sed -e "s|BBBBB|$OUT|g" OrthIter_PBMCs.sh > TMP_OrthIter_PBMCs.sh
sed -e "s|CCCCC|10|g" TMP_OrthIter_PBMCs.sh > OrthIter_PBMCs.sh
sed -e "s|DDDDD|../Data/PBMCs/Feature_LogMeans.csv|g" OrthIter_PBMCs.sh > TMP_OrthIter_PBMCs.sh
sed -e "s|EEEEE|../Data/PBMCs/Sample_NoCounts.csv|g" TMP_OrthIter_PBMCs.sh > OrthIter_PBMCs.sh
sed -e "s|FFFFF|3|g" OrthIter_PBMCs.sh > TMP_OrthIter_PBMCs.sh
sed -e "s|GGGGG|11629|g" TMP_OrthIter_PBMCs.sh > OrthIter_PBMCs.sh
sed -e "s|HHHHH|$LOG|g" OrthIter_PBMCs.sh > TMP_OrthIter_PBMCs.sh

mv TMP_OrthIter_PBMCs.sh OrthIter_PBMCs.sh
chmod +x OrthIter_PBMCs.sh
qsub OrthIter_PBMCs.sh
rm *OrthIter_PBMCs.sh

echo "Pancreas"
OUT="../Data/Pancreas/OrthIter"
LOG="log/Pancreas_OrthIter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/OrthIter_Template > OrthIter_Pancreas.sh
sed -e "s|BBBBB|$OUT|g" OrthIter_Pancreas.sh > TMP_OrthIter_Pancreas.sh
sed -e "s|CCCCC|10|g" TMP_OrthIter_Pancreas.sh > OrthIter_Pancreas.sh
sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" OrthIter_Pancreas.sh > TMP_OrthIter_Pancreas.sh
sed -e "s|EEEEE|../Data/Pancreas/Sample_NoCounts.csv|g" TMP_OrthIter_Pancreas.sh > OrthIter_Pancreas.sh
sed -e "s|FFFFF|12|g" OrthIter_Pancreas.sh > TMP_OrthIter_Pancreas.sh
sed -e "s|GGGGG|5075|g" TMP_OrthIter_Pancreas.sh > OrthIter_Pancreas.sh
sed -e "s|HHHHH|$LOG|g" OrthIter_Pancreas.sh > TMP_OrthIter_Pancreas.sh

mv TMP_OrthIter_Pancreas.sh OrthIter_Pancreas.sh
chmod +x OrthIter_Pancreas.sh
qsub OrthIter_Pancreas.sh
rm *OrthIter_Pancreas.sh

echo "BrainSpinalCord"
OUT="../Data/BrainSpinalCord/OrthIter"
LOG="log/BrainSpinalCord_OrthIter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/BrainSpinalCord/Data.zst|g" Templates/OrthIter_Template > OrthIter_BrainSpinalCord.sh
sed -e "s|BBBBB|$OUT|g" OrthIter_BrainSpinalCord.sh > TMP_OrthIter_BrainSpinalCord.sh
sed -e "s|CCCCC|10|g" TMP_OrthIter_BrainSpinalCord.sh > OrthIter_BrainSpinalCord.sh
sed -e "s|DDDDD|../Data/BrainSpinalCord/Feature_LogMeans.csv|g" OrthIter_BrainSpinalCord.sh > TMP_OrthIter_BrainSpinalCord.sh
sed -e "s|EEEEE|../Data/BrainSpinalCord/Sample_NoCounts.csv|g" TMP_OrthIter_BrainSpinalCord.sh > OrthIter_BrainSpinalCord.sh
sed -e "s|FFFFF|16|g" OrthIter_BrainSpinalCord.sh > TMP_OrthIter_BrainSpinalCord.sh
sed -e "s|GGGGG|995|g" TMP_OrthIter_BrainSpinalCord.sh > OrthIter_BrainSpinalCord.sh
sed -e "s|HHHHH|$LOG|g" OrthIter_BrainSpinalCord.sh > TMP_OrthIter_BrainSpinalCord.sh

mv TMP_OrthIter_BrainSpinalCord.sh OrthIter_BrainSpinalCord.sh
chmod +x OrthIter_BrainSpinalCord.sh
qsub OrthIter_BrainSpinalCord.sh
rm *OrthIter_BrainSpinalCord.sh

echo "Brain"
OUT="../Data/Brain/OrthIter"
LOG="log/Brain_OrthIter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/OrthIter_Template > OrthIter_Brain.sh
sed -e "s|BBBBB|$OUT|g" OrthIter_Brain.sh > TMP_OrthIter_Brain.sh
sed -e "s|CCCCC|10|g" TMP_OrthIter_Brain.sh > OrthIter_Brain.sh
sed -e "s|DDDDD|../Data/Brain/Feature_LogMeans.csv|g" OrthIter_Brain.sh > TMP_OrthIter_Brain.sh
sed -e "s|EEEEE|../Data/Brain/Sample_NoCounts.csv|g" TMP_OrthIter_Brain.sh > OrthIter_Brain.sh
sed -e "s|FFFFF|20|g" OrthIter_Brain.sh > TMP_OrthIter_Brain.sh
sed -e "s|GGGGG|995|g" TMP_OrthIter_Brain.sh > OrthIter_Brain.sh
sed -e "s|HHHHH|$LOG|g" OrthIter_Brain.sh > TMP_OrthIter_Brain.sh

mv TMP_OrthIter_Brain.sh OrthIter_Brain.sh
chmod +x OrthIter_Brain.sh
qsub OrthIter_Brain.sh
rm *OrthIter_Brain.sh
