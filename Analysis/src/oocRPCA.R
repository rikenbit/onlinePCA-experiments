source("src/Functions.R")

# argv[5] : Input (BIN)
# argv[6] : Number of rows
# argv[7] : Number of columns
# argv[8] : output1
# argv[9] : output2
# args[10] : dim
argv = commandArgs()
print(argv)

profileoocRPCA(
	input=argv[5],
	m=as.numeric(argv[6]),
	n=as.numeric(argv[7]),
	output1=argv[8],
	output2=argv[9],
	dim=as.numeric(argv[10])
	)
