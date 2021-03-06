# onlinePCA-experiments
[![DOI](https://zenodo.org/badge/186921547.svg)](https://zenodo.org/badge/latestdoi/186921547)

## About data preparation
- **PBMCs** : Data/PBMCs/README
- **Pancreas** : Data/Pancreas/README
- **BrainSpinalCord** : Data/BrainSpinalCord/README
- **Brain** : Data/Brain/README

## Requirements
- **GNU Time** : v1.7
- **Open Grid Scheduler/Grid Engine** : v2011.11
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
```

## Result of the banchmarking
- **Eigenvectors** : Data/{PBMCs,Pancreas,BrainSpinalCord,Brain}/*[Each PCA]*/Eigen_vectors.csv
- **Eigenvalues** : Data/{PBMCs,Pancreas,BrainSpinalCord,Brain}/*[Each PCA]*/Eigen_values.csv
- **Elapsed time and memory usage** : Analysis/log/*
