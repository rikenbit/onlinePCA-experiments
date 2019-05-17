#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/Arpack.jl_Template > TMP_Arpack.jl_Cortex.sh
mkdir -p ../Data/Cortex/Arpack.jl
sed -e "s|YYYYY|../Data/Cortex/Arpack.jl|g" TMP_Arpack.jl_Cortex.sh > Arpack.jl_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_Arpack.jl.out|g" Arpack.jl_Cortex.sh > TMP_Arpack.jl_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_Arpack.jl_Cortex.sh > Arpack.jl_Cortex.sh
chmod +x Arpack.jl_Cortex.sh
qsub Arpack.jl_Cortex.sh
rm *Arpack.jl_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Arpack.jl_Template > TMP_Arpack.jl_Pancreas.sh
mkdir -p ../Data/Pancreas/Arpack.jl
sed -e "s|YYYYY|../Data/Pancreas/Arpack.jl|g" TMP_Arpack.jl_Pancreas.sh > Arpack.jl_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Arpack.jl.out|g" Arpack.jl_Pancreas.sh > TMP_Arpack.jl_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Arpack.jl_Pancreas.sh > Arpack.jl_Pancreas.sh
chmod +x Arpack.jl_Pancreas.sh
qsub Arpack.jl_Pancreas.sh
rm *Arpack.jl_Pancreas.sh
