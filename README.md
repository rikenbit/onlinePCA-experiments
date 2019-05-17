# onlinePCA-experiments

## Data preparation (for generating Data/{Cortex,Pancreas,Brain}/*.csv)
- Cortex : Data/Cortex/README
- Pancreas : Data/Pancreas/README
- Brain : https://gist.github.com/kokitsuyuzaki/5b6cebcaf37100c8794bdb89c7135fd5

## Requirement
- Open Grid Scheduler/Grid Engine : XXX
- R : v3.5.0
- Python : v3.6.4
- Julia : v1.0.1

## How to perform all the PCA scripts
```{bash}
cd Analysis
rake install # Package installation
rake preprocess # Preprocessing the data files
rake benchmark # Benchmarking all the PCA implementations
rake tenxpca # PCA implementation for 10X-HDF files
```

## Result of the banchmarking
- Eigenvectors : Data/{Cortex,Pancreas,Brain}/*/Eigen_vectors.csv
- Eigenvalues : Data/{Cortex,Pancreas,Brain}/*/Eigen_values.csv
- Calculation time and memory space : log/*
