source("src/Functions.R")

# argv[5] : Input
# argv[6] : output
# args[7] : dim
argv = commandArgs()
print(argv)

profileRefSVD(
	input=argv[5],
	output=argv[6],
	dim=as.numeric(argv[7])
	)
