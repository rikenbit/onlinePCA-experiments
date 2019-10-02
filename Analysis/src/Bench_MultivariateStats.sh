#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/MultivariateStats_Template > TMP_MultivariateStats_PBMCs.sh
mkdir -p ../Data/PBMCs/MultivariateStats
sed -e "s|YYYYY|../Data/PBMCs/MultivariateStats|g" TMP_MultivariateStats_PBMCs.sh > MultivariateStats_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_MultivariateStats.out|g" MultivariateStats_PBMCs.sh > TMP_MultivariateStats_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_MultivariateStats_PBMCs.sh > MultivariateStats_PBMCs.sh
chmod +x MultivariateStats_PBMCs.sh
qsub MultivariateStats_PBMCs.sh
rm *MultivariateStats_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/MultivariateStats_Template > TMP_MultivariateStats_Pancreas.sh
mkdir -p ../Data/Pancreas/MultivariateStats
sed -e "s|YYYYY|../Data/Pancreas/MultivariateStats|g" TMP_MultivariateStats_Pancreas.sh > MultivariateStats_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_MultivariateStats.out|g" MultivariateStats_Pancreas.sh > TMP_MultivariateStats_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_MultivariateStats_Pancreas.sh > MultivariateStats_Pancreas.sh
chmod +x MultivariateStats_Pancreas.sh
qsub MultivariateStats_Pancreas.sh
rm *MultivariateStats_Pancreas.sh
