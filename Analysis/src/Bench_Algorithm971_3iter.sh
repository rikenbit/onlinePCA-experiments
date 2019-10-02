#!/bin/bash

echo "PBMCs"
OUT="../Data/PBMCs/Algorithm971_3iter"
LOG="log/PBMCs_Algorithm971_3iter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/PBMCs/Data.zst|g" Templates/Algorithm971_3iter_Template > TMP_Algorithm971_PBMCs.sh
sed -e "s|BBBBB|$OUT|g" TMP_Algorithm971_PBMCs.sh > Algorithm971_PBMCs.sh
sed -e "s|CCCCC|../Data/PBMCs/Feature_LogMeans.csv|g" Algorithm971_PBMCs.sh > TMP_Algorithm971_PBMCs.sh
sed -e "s|DDDDD|../Data/PBMCs/Sample_NoCounts.csv|g" TMP_Algorithm971_PBMCs.sh > Algorithm971_PBMCs.sh
sed -e "s|EEEEE|3|g" Algorithm971_PBMCs.sh > TMP_Algorithm971_PBMCs.sh
sed -e "s|FFFFF|11629|g" TMP_Algorithm971_PBMCs.sh > Algorithm971_PBMCs.sh
sed -e "s|GGGGG|$LOG|g" Algorithm971_PBMCs.sh > TMP_Algorithm971_PBMCs.sh

mv TMP_Algorithm971_PBMCs.sh Algorithm971_PBMCs.sh
chmod +x Algorithm971_PBMCs.sh
qsub Algorithm971_PBMCs.sh
rm *Algorithm971_PBMCs.sh

echo "Pancreas"
OUT="../Data/Pancreas/Algorithm971_3iter"
LOG="log/Pancreas_Algorithm971_3iter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/Algorithm971_3iter_Template > TMP_Algorithm971_Pancreas.sh
sed -e "s|BBBBB|$OUT|g" TMP_Algorithm971_Pancreas.sh > Algorithm971_Pancreas.sh
sed -e "s|CCCCC|../Data/Pancreas/Feature_LogMeans.csv|g" Algorithm971_Pancreas.sh > TMP_Algorithm971_Pancreas.sh
sed -e "s|DDDDD|../Data/Pancreas/Sample_NoCounts.csv|g" TMP_Algorithm971_Pancreas.sh > Algorithm971_Pancreas.sh
sed -e "s|EEEEE|12|g" Algorithm971_Pancreas.sh > TMP_Algorithm971_Pancreas.sh
sed -e "s|FFFFF|5075|g" TMP_Algorithm971_Pancreas.sh > Algorithm971_Pancreas.sh
sed -e "s|GGGGG|$LOG|g" Algorithm971_Pancreas.sh > TMP_Algorithm971_Pancreas.sh

mv TMP_Algorithm971_Pancreas.sh Algorithm971_Pancreas.sh
chmod +x Algorithm971_Pancreas.sh
qsub Algorithm971_Pancreas.sh
rm *Algorithm971_Pancreas.sh

echo "BrainSpinalCord"
OUT="../Data/BrainSpinalCord/Algorithm971_3iter"
LOG="log/BrainSpinalCord_Algorithm971_3iter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/BrainSpinalCord/Data.zst|g" Templates/Algorithm971_3iter_Template > TMP_Algorithm971_BrainSpinalCord.sh
sed -e "s|BBBBB|$OUT|g" TMP_Algorithm971_BrainSpinalCord.sh > Algorithm971_BrainSpinalCord.sh
sed -e "s|CCCCC|../Data/BrainSpinalCord/Feature_LogMeans.csv|g" Algorithm971_BrainSpinalCord.sh > TMP_Algorithm971_BrainSpinalCord.sh
sed -e "s|DDDDD|../Data/BrainSpinalCord/Sample_NoCounts.csv|g" TMP_Algorithm971_BrainSpinalCord.sh > Algorithm971_BrainSpinalCord.sh
sed -e "s|EEEEE|16|g" Algorithm971_BrainSpinalCord.sh > TMP_Algorithm971_BrainSpinalCord.sh
sed -e "s|FFFFF|995|g" TMP_Algorithm971_BrainSpinalCord.sh > Algorithm971_BrainSpinalCord.sh
sed -e "s|GGGGG|$LOG|g" Algorithm971_BrainSpinalCord.sh > TMP_Algorithm971_BrainSpinalCord.sh

mv TMP_Algorithm971_BrainSpinalCord.sh Algorithm971_BrainSpinalCord.sh
chmod +x Algorithm971_BrainSpinalCord.sh
qsub Algorithm971_BrainSpinalCord.sh
rm *Algorithm971_BrainSpinalCord.sh

echo "Brain"
OUT="../Data/Brain/Algorithm971_3iter"
LOG="log/Brain_Algorithm971_3iter.out"
mkdir -p $OUT

sed -e "s|AAAAA|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/Algorithm971_3iter_Template > TMP_Algorithm971_Brain.sh
sed -e "s|BBBBB|$OUT|g" TMP_Algorithm971_Brain.sh > Algorithm971_Brain.sh
sed -e "s|CCCCC|../Data/Brain/Feature_LogMeans.csv|g" Algorithm971_Brain.sh > TMP_Algorithm971_Brain.sh
sed -e "s|DDDDD|../Data/Brain/Sample_NoCounts.csv|g" TMP_Algorithm971_Brain.sh > Algorithm971_Brain.sh
sed -e "s|EEEEE|20|g" Algorithm971_Brain.sh > TMP_Algorithm971_Brain.sh
sed -e "s|FFFFF|4170|g" TMP_Algorithm971_Brain.sh > Algorithm971_Brain.sh
sed -e "s|GGGGG|$LOG|g" Algorithm971_Brain.sh > TMP_Algorithm971_Brain.sh

mv TMP_Algorithm971_Brain.sh Algorithm971_Brain.sh
chmod +x Algorithm971_Brain.sh
qsub Algorithm971_Brain.sh
rm *Algorithm971_Brain.sh
