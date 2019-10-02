#!/bin/bash

echo "PBMCs"
OUT="../Data/PBMCs/Halko_1iter"
LOG="log/PBMCs_Halko_1iter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/PBMCs/Data.zst|g" Templates/Halko_1iter_Template > TMP_Halko_PBMCs.sh
sed -e "s|BBBBB|$OUT|g" TMP_Halko_PBMCs.sh > Halko_PBMCs.sh
sed -e "s|CCCCC|../Data/PBMCs/Feature_LogMeans.csv|g" Halko_PBMCs.sh > TMP_Halko_PBMCs.sh
sed -e "s|DDDDD|../Data/PBMCs/Sample_NoCounts.csv|g" TMP_Halko_PBMCs.sh > Halko_PBMCs.sh
sed -e "s|EEEEE|3|g" Halko_PBMCs.sh > TMP_Halko_PBMCs.sh
sed -e "s|FFFFF|11629|g" TMP_Halko_PBMCs.sh > Halko_PBMCs.sh
sed -e "s|GGGGG|$LOG|g" Halko_PBMCs.sh > TMP_Halko_PBMCs.sh

mv TMP_Halko_PBMCs.sh Halko_PBMCs.sh
chmod +x Halko_PBMCs.sh
qsub Halko_PBMCs.sh
rm *Halko_PBMCs.sh

echo "Pancreas"
OUT="../Data/Pancreas/Halko_1iter"
LOG="log/Pancreas_Halko_1iter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/Halko_1iter_Template > TMP_Halko_Pancreas.sh
sed -e "s|BBBBB|$OUT|g" TMP_Halko_Pancreas.sh > Halko_Pancreas.sh
sed -e "s|CCCCC|../Data/Pancreas/Feature_LogMeans.csv|g" Halko_Pancreas.sh > TMP_Halko_Pancreas.sh
sed -e "s|DDDDD|../Data/Pancreas/Sample_NoCounts.csv|g" TMP_Halko_Pancreas.sh > Halko_Pancreas.sh
sed -e "s|EEEEE|12|g" Halko_Pancreas.sh > TMP_Halko_Pancreas.sh
sed -e "s|FFFFF|5075|g" TMP_Halko_Pancreas.sh > Halko_Pancreas.sh
sed -e "s|GGGGG|$LOG|g" Halko_Pancreas.sh > TMP_Halko_Pancreas.sh

mv TMP_Halko_Pancreas.sh Halko_Pancreas.sh
chmod +x Halko_Pancreas.sh
qsub Halko_Pancreas.sh
rm *Halko_Pancreas.sh

echo "BrainSpinalCord"
OUT="../Data/BrainSpinalCord/Halko_1iter"
LOG="log/BrainSpinalCord_Halko_1iter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/BrainSpinalCord/Data.zst|g" Templates/Halko_1iter_Template > TMP_Halko_BrainSpinalCord.sh
sed -e "s|BBBBB|$OUT|g" TMP_Halko_BrainSpinalCord.sh > Halko_BrainSpinalCord.sh
sed -e "s|CCCCC|../Data/BrainSpinalCord/Feature_LogMeans.csv|g" Halko_BrainSpinalCord.sh > TMP_Halko_BrainSpinalCord.sh
sed -e "s|DDDDD|../Data/BrainSpinalCord/Sample_NoCounts.csv|g" TMP_Halko_BrainSpinalCord.sh > Halko_BrainSpinalCord.sh
sed -e "s|EEEEE|16|g" Halko_BrainSpinalCord.sh > TMP_Halko_BrainSpinalCord.sh
sed -e "s|FFFFF|995|g" TMP_Halko_BrainSpinalCord.sh > Halko_BrainSpinalCord.sh
sed -e "s|GGGGG|$LOG|g" Halko_BrainSpinalCord.sh > TMP_Halko_BrainSpinalCord.sh

mv TMP_Halko_BrainSpinalCord.sh Halko_BrainSpinalCord.sh
chmod +x Halko_BrainSpinalCord.sh
qsub Halko_BrainSpinalCord.sh
rm *Halko_BrainSpinalCord.sh

echo "Brain"
OUT="../Data/Brain/Halko_1iter"
LOG="log/Brain_Halko_1iter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/Halko_1iter_Template > TMP_Halko_Brain.sh
sed -e "s|BBBBB|$OUT|g" TMP_Halko_Brain.sh > Halko_Brain.sh
sed -e "s|CCCCC|../Data/Feature_LogMeans.csv|g" Halko_Brain.sh > TMP_Halko_Brain.sh
sed -e "s|DDDDD|../Data/Sample_NoCounts.csv|g" TMP_Halko_Brain.sh > Halko_Brain.sh
sed -e "s|EEEEE|20|g" Halko_Brain.sh > TMP_Halko_Brain.sh
sed -e "s|FFFFF|4170|g" TMP_Halko_Brain.sh > Halko_Brain.sh
sed -e "s|GGGGG|$LOG|g" Halko_Brain.sh > TMP_Halko_Brain.sh

mv TMP_Halko_Brain.sh Halko_Brain.sh
chmod +x Halko_Brain.sh
qsub Halko_Brain.sh
rm *Halko_Brain.sh
