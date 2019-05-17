source("src/Functions.R")

# argv[5] : Input
# argv[6] : output1
# argv[7] : output2
# args[8] : dim
argv = commandArgs()
print(argv)

profileIRLB(
	input=argv[5],
	output1=argv[6],
	output2=argv[7],
	dim=as.numeric(argv[8])
	)
