# -*- coding: utf-8 -*-

import sys
import numpy as np
from sklearn.decomposition import IncrementalPCA
from sklearn import preprocessing
import itertools

# args[1] : Input file
# args[2] : Dimention
# args[3] : Output file (Eigen vectors)
# args[4] : Output file (Eigen values)
args = sys.argv

# Setting
pca = IncrementalPCA(n_components=int(args[2]))
i = 1
start = 0
end = int(args[2])
eof = False

# Incremental PCA
while eof == False:
	with open(args[1]) as f_input:
		# Import
		data = np.loadtxt(itertools.islice(f_input, start, end), delimiter=",")
		if data.shape[0] < int(args[2]):
			eof = True
		else:
			data = np.log10(data + 1)
			pca.partial_fit(data)
			start =  int(args[2]) * i
			end = start + int(args[2])
			i = i + 1

# Save
np.savetxt(args[3], pca.components_.T, delimiter=",")
np.savetxt(args[4], pca.explained_variance_, delimiter=",")
