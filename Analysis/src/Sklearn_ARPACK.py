# -*- coding: utf-8 -*-

import sys
import numpy as np
from sklearn.decomposition import PCA

# args[1] : Input file
# args[2] : Dimention
# args[3] : Output file (Eigen vectors)
# args[4] : Output file (Eigen values)
args = sys.argv

# Import
data = np.loadtxt(args[1], delimiter=",")
libsize = np.sum(data, axis=0)
med = np.median(np.asarray(libsize))
data = med * (data / libsize)
data = np.log10(data + 1)

# PCA
pca = PCA(n_components=int(args[2]), svd_solver="arpack")
pca.fit(data.T)
out = pca.fit_transform(data.T)

# Save
np.savetxt(args[3], out, delimiter=",")
np.savetxt(args[4], pca.explained_variance_, delimiter=",")
