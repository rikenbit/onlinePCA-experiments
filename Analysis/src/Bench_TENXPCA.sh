#!/bin/bash

echo "Brain_Chromium"

nGenes=(27998 2800 280 28)
for ng in ${nGenes[@]}; do
	sed -e "s|AAAAA|$ng|g" Templates/TENXPCA_Template > "TMP_TENXPCA_Brain_Chromium"$ng"Genes.sh"
	OUT="../Data/Brain_Chromium/TENXPCA_"$ng"Genes"
	mkdir -p $OUT
	sed -e "s|BBBBB|$OUT|g" "TMP_TENXPCA_Brain_Chromium"$ng"Genes.sh" > "TENXPCA_Brain_Chromium"$ng"Genes.sh"
	LOG="log/Brain_Chromium_TENXPCA_"$ng"Genes.out"
	sed -e "s|CCCCC|$LOG|g" "TENXPCA_Brain_Chromium"$ng"Genes.sh" > "TMP_TENXPCA_Brain_Chromium"$ng"Genes.sh"
	mv "TMP_TENXPCA_Brain_Chromium"$ng"Genes.sh" "TENXPCA_Brain_Chromium"$ng"Genes.sh"
	chmod +x "TENXPCA_Brain_Chromium"$ng"Genes.sh"
	qsub "TENXPCA_Brain_Chromium"$ng"Genes.sh"
	rm "TENXPCA_Brain_Chromium"$ng"Genes.sh"
done
