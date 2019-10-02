#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/Arpack.jl_Template > TMP_Arpack.jl_PBMCs.sh
mkdir -p ../Data/PBMCs/Arpack.jl
sed -e "s|YYYYY|../Data/PBMCs/Arpack.jl|g" TMP_Arpack.jl_PBMCs.sh > Arpack.jl_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_Arpack.jl.out|g" Arpack.jl_PBMCs.sh > TMP_Arpack.jl_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_Arpack.jl_PBMCs.sh > Arpack.jl_PBMCs.sh
chmod +x Arpack.jl_PBMCs.sh
qsub Arpack.jl_PBMCs.sh
rm *Arpack.jl_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Arpack.jl_Template > TMP_Arpack.jl_Pancreas.sh
mkdir -p ../Data/Pancreas/Arpack.jl
sed -e "s|YYYYY|../Data/Pancreas/Arpack.jl|g" TMP_Arpack.jl_Pancreas.sh > Arpack.jl_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Arpack.jl.out|g" Arpack.jl_Pancreas.sh > TMP_Arpack.jl_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Arpack.jl_Pancreas.sh > Arpack.jl_Pancreas.sh
chmod +x Arpack.jl_Pancreas.sh
qsub Arpack.jl_Pancreas.sh
rm *Arpack.jl_Pancreas.sh
