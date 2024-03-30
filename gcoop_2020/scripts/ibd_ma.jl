# Alex Pinch, BIOL435
# Last updated Jan. 30th 2023
# This script calculates IBD from multiple ancestors

# THIS SCRIPT NEEDS INPUT IN THIS ORDER: 
# number of ancestors, number of inbreeding loops, given FA/ancestral inbreeding coefficient
# THIS SCRIPT WILL ASK FOR:
# the number of individuals in each inbreeding loop, in case they are different

function ibd()
	ancestors=parse(Float32, ARGS[1])
	loops = parse(Int, ARGS[2])
	FA = parse(Float32, ARGS[3])
	temp_sum = 0
	for i in 1:loops
		print("Individuals in inbreeding loop ", i, ": ")
		n = parse(Float32, readline())
		temp_sum = temp_sum + ((1/2)^n)
	end
	FE = temp_sum * (1+FA)
	println("The probability that two alleles are identity by descent is ", FE)
end

ibd()