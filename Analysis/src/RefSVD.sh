#!/bin/bash

#####################################################
##################### 実データ #######################
#####################################################

# Cortical（大脳皮質、21614遺伝子 × 1679細胞、21クラス、さらに亜集団）
echo "Cortical_SMART"
sed -e "s|XXXXX|/data2/koki/ICCIPCA/Data/Cortical_SMART/refData.csv|g" Templates/RefSVD_Template > TMP_RefSVD_Cortical_SMART.sh
sed -e "s|YYYYY|/data2/koki/ICCIPCA/Data/Cortical_SMART|g" TMP_RefSVD_Cortical_SMART.sh > RefSVD_Cortical_SMART.sh
sed -e "s|ZZZZZ|/data2/koki/ICCIPCA/Analysis/log/Cortical_SMART_RefSVD.out|g" RefSVD_Cortical_SMART.sh > TMP_RefSVD_Cortical_SMART.sh
sed -e "s|SSSSS|10|g" TMP_RefSVD_Cortical_SMART.sh > RefSVD_Cortical_SMART.sh
qsub RefSVD_Cortical_SMART.sh
rm -rf *RefSVD_Cortical_SMART.sh

# inDrop（膵臓、17499 × 8569、14クラス）
echo "Pancreas_inDrop"
sed -e "s|XXXXX|/data2/koki/ICCIPCA/Data/Pancreas_inDrop/refData.csv|g" Templates/RefSVD_Template > TMP_RefSVD_Pancreas_inDrop.sh
sed -e "s|YYYYY|/data2/koki/ICCIPCA/Data/Pancreas_inDrop|g" TMP_RefSVD_Pancreas_inDrop.sh > RefSVD_Pancreas_inDrop.sh
sed -e "s|ZZZZZ|/data2/koki/ICCIPCA/Analysis/log/Pancreas_inDrop_RefSVD.out|g" RefSVD_Pancreas_inDrop.sh > TMP_RefSVD_Pancreas_inDrop.sh
sed -e "s|SSSSS|12|g" TMP_RefSVD_Pancreas_inDrop.sh > RefSVD_Pancreas_inDrop.sh
qsub RefSVD_Pancreas_inDrop.sh
rm -rf *RefSVD_Pancreas_inDrop.sh

# Chromium（マウス脳、1306127細胞、23771遺伝子、60クラス）
echo "Brain_Chromium"
sed -e "s|XXXXX|/data/koki/TestData/single_cell/10XGenomics/1M_neurons/ref1M_neurons_filtered_gene_bc_matrices_h5.csv|g" Templates/RefSVD_Template > TMP_RefSVD_Brain_Chromium.sh
sed -e "s|YYYYY|/data/koki/TestData/single_cell/10XGenomics/1M_neurons|g" TMP_RefSVD_Brain_Chromium.sh > RefSVD_Brain_Chromium.sh
sed -e "s|ZZZZZ|/data2/koki/ICCIPCA/Analysis/log/Brain_Chromium_RefSVD.out|g" RefSVD_Brain_Chromium.sh > TMP_RefSVD_Brain_Chromium.sh
sed -e "s|SSSSS|20|g" TMP_RefSVD_Brain_Chromium.sh > RefSVD_Brain_Chromium.sh
qsub RefSVD_Brain_Chromium.sh
rm -rf *RefSVD_Brain_Chromium.sh
