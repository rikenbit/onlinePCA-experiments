#!/bin/bash

/usr/bin/time -v R CMD BATCH src/Transpose_Real_Cortical_SMART.R >& /data2/koki/ICCIPCA/Analysis/log/transpose_Cortical_SMART.out

/usr/bin/time -v R CMD BATCH src/Transpose_Real_Pancreas_inDrop.R >& /data2/koki/ICCIPCA/Analysis/log/transpose_Pancreas_inDrop.out
