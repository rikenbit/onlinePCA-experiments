#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/CPMED.csv|g" Templates/dask_ml_Template > TMP_dask_ml_PBMCs.sh
mkdir -p ../Data/PBMCs/dask_ml
sed -e "s|YYYYY|../Data/PBMCs/dask_ml|g" TMP_dask_ml_PBMCs.sh > dask_ml_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_dask_ml.out|g" dask_ml_PBMCs.sh > TMP_dask_ml_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_dask_ml_PBMCs.sh > dask_ml_PBMCs.sh
qsub dask_ml_PBMCs.sh
rm *dask_ml_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/CPMED.csv|g" Templates/dask_ml_Template > TMP_dask_ml_Pancreas.sh
mkdir -p ../Data/Pancreas/dask_ml
sed -e "s|YYYYY|../Data/Pancreas/dask_ml|g" TMP_dask_ml_Pancreas.sh > dask_ml_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_dask_ml.out|g" dask_ml_Pancreas.sh > TMP_dask_ml_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_dask_ml_Pancreas.sh > dask_ml_Pancreas.sh
qsub dask_ml_Pancreas.sh
rm *dask_ml_Pancreas.sh
