# -*- coding: utf-8 -*-

import sys
import numpy as np
from sklearn.utils.extmath import randomized_svd
from sklearn import preprocessing

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
data = preprocessing.scale(np.log10(data + 1), axis=1, with_mean=True, with_std=False)

# PCA
out = randomized_svd(data, n_components=int(args[2]), n_iter=3, power_iteration_normalizer="LU")

# Save
np.savetxt(args[3], out[2].T, delimiter=",")
np.savetxt(args[4], out[1]*out[1]/data.shape[1], delimiter=",")
