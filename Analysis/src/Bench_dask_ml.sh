#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/dask_ml_Template > TMP_dask_ml_Cortex.sh
mkdir -p ../Data/Cortex/dask_ml
sed -e "s|YYYYY|../Data/Cortex/dask_ml|g" TMP_dask_ml_Cortex.sh > dask_ml_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_dask_ml.out|g" dask_ml_Cortex.sh > TMP_dask_ml_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_dask_ml_Cortex.sh > dask_ml_Cortex.sh
qsub dask_ml_Cortex.sh
rm *dask_ml_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/dask_ml_Template > TMP_dask_ml_Pancreas.sh
mkdir -p ../Data/Pancreas/dask_ml
sed -e "s|YYYYY|../Data/Pancreas/dask_ml|g" TMP_dask_ml_Pancreas.sh > dask_ml_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_dask_ml.out|g" dask_ml_Pancreas.sh > TMP_dask_ml_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_dask_ml_Pancreas.sh > dask_ml_Pancreas.sh
qsub dask_ml_Pancreas.sh
rm *dask_ml_Pancreas.sh

echo "Brain"
sed -e "s|XXXXX|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.csv|g" Templates/dask_ml_Template > TMP_dask_ml_Brain.sh
mkdir -p ../Data/Brain/dask_ml
sed -e "s|YYYYY|../Data/Brain/dask_ml|g" TMP_dask_ml_Brain.sh > dask_ml_Brain.sh
sed -e "s|ZZZZZ|log/Brain_dask_ml.out|g" dask_ml_Brain.sh > TMP_dask_ml_Brain.sh
sed -e "s|SSSSS|20|g" TMP_dask_ml_Brain.sh > dask_ml_Brain.sh
qsub dask_ml_Brain.sh
rm *dask_ml_Brain.sh
