using StatsBase
using CSV

function ncol(;csvfile::AbstractString="")
    counter = 0
    open(csvfile, "r") do f
        xx = readline(f)
        xx = split(xx, ",")
        length(xx)
    end
end

input = ARGS[1]
output = ARGS[2]
ratio = 1.531245

# Random Sampling
ncell = ncol(csvfile=input)
idx = sample(1:ncell, Int(round(ratio*ncell/100)), replace = false)
len = length(idx)
println(len, " genes are selected")

open(output, "w") do file
	counter = 0
    open(input , "r") do f
        while !eof(f)
            counter += 1
            print("\r", counter)
            xx = readline(f)
            xx = split(xx, ",")[idx] # Imported as Character
            # Assume input data is Integer
            x = zeros(Float64, length(xx))
            for i=1:length(x)
                x[i] = parse(Float64, xx[i])
            end
            writedlm(file, x', ',')
        end
    end
    close(file)
end
print("\n")
