# -*- coding: utf-8 -*-

import sys
import numpy as np
from sklearn.decomposition import IncrementalPCA
from sklearn import preprocessing
import itertools

# args[1] : Input file
# args[2] : Dimention
# args[3] : Chunk size
# args[4] : Output file (Eigen vectors)
# args[5] : Output file (Eigen values)
args = sys.argv

# Setting
pca = IncrementalPCA(n_components=int(args[2]))
i = 1
start = 0
end = int(args[2])
eof = False
chunksize = int(args[3])

# Incremental PCA
while eof == False:
	with open(args[1]) as f_input:
		start = i * chunksize
		end = start + chunksize
		# Import
		data = np.loadtxt(itertools.islice(f_input, start, end), delimiter=",")
		if (data.shape[0] < chunksize) or (len(data.shape) == 1):
			eof = True
		else:
			data = preprocessing.scale(np.log10(data + 1), axis=1, with_mean=True, with_std=False)
			pca.partial_fit(data)
			i = i + 1

# Save
np.savetxt(args[4], pca.components_.T, delimiter=",")
np.savetxt(args[5], pca.explained_variance_, delimiter=",")
