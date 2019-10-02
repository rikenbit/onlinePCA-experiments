# -*- coding: utf-8 -*-

import sys
import numpy as np
from dask_ml.decomposition import PCA
import dask.dataframe as dd

# args[1] : Input file
# args[2] : Dimention
# args[3] : Output file (Eigen vectors)
# args[4] : Output file (Eigen values)
args = sys.argv

# Import as dask array
data = dd.read_csv(args[1], sep=",", header=None, dtype=float)
data = data.to_dask_array(True)
data = np.log10(data + 1)

# PCA
pca = PCA(n_components=int(args[2]), svd_solver="randomized", iterated_power=3)
pca.fit(data.T)
out = pca.fit_transform(data.T)

# Save
np.savetxt(args[3], out, delimiter=",")
np.savetxt(args[4], pca.explained_variance_, delimiter=",")
