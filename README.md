# onlinePCA-experiments

## Data preparation
- **Cortex** : Data/Cortex/README (for generating Data/Cortex/Data.csv)
- **Pancreas** : Data/Pancreas/README (for generating Data/Pancreas/Data.csv)
- **Brain** : Data/Brain/README (for generating Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.csv)

## Requirement
- **Open Grid Scheduler/Grid Engine** : 2011.11
- **R** : v3.5.0
- **Python** : v3.6.4
- **Julia** : v1.0.1
- **Rake (Ruby)** : v11.2.2

## How to perform all the PCA scripts
```{bash}
cd Analysis
rake install # Package installation
rake preprocess # Preprocessing the data files
rake benchmark # Benchmarking all the PCA implementations
rake tenxpca # PCA implementation for 10X-HDF files
```

## Result of the banchmarking
- **Eigenvectors** : Data/{Cortex,Pancreas,Brain}/*/Eigen_vectors.csv
- **Eigenvalues** : Data/{Cortex,Pancreas,Brain}/*/Eigen_values.csv
- **Elapsed time and memory usage** : log/*
