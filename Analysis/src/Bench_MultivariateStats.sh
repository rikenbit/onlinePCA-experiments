#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/MultivariateStats_Template > TMP_MultivariateStats_Cortex.sh
mkdir -p ../Data/Cortex/MultivariateStats
sed -e "s|YYYYY|../Data/Cortex/MultivariateStats|g" TMP_MultivariateStats_Cortex.sh > MultivariateStats_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_MultivariateStats.out|g" MultivariateStats_Cortex.sh > TMP_MultivariateStats_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_MultivariateStats_Cortex.sh > MultivariateStats_Cortex.sh
chmod +x MultivariateStats_Cortex.sh
qsub MultivariateStats_Cortex.sh
rm *MultivariateStats_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/MultivariateStats_Template > TMP_MultivariateStats_Pancreas.sh
mkdir -p ../Data/Pancreas/MultivariateStats
sed -e "s|YYYYY|../Data/Pancreas/MultivariateStats|g" TMP_MultivariateStats_Pancreas.sh > MultivariateStats_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_MultivariateStats.out|g" MultivariateStats_Pancreas.sh > TMP_MultivariateStats_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_MultivariateStats_Pancreas.sh > MultivariateStats_Pancreas.sh
chmod +x MultivariateStats_Pancreas.sh
qsub MultivariateStats_Pancreas.sh
rm *MultivariateStats_Pancreas.sh
