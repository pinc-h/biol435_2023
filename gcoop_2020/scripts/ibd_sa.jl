# Alex Pinch, BIOL435
# Last updated Jan. 30th 2023
# This script calculates IBD from a single ancestor, and assumes inbreeding loops have the same number of individuals

# THIS SCRIPT NEEDS INPUT IN THIS ORDER: 
# number of inbreeding loops, number of unique individuals in each loop, given FA/ancestral inbreeding coefficient

function ibd()
	loops = parse(Float32, ARGS[1])
	n = parse(Float32, ARGS[2])
	FA = parse(Float32, ARGS[3])
	FE = 0
	for i in 1:loops
		FE = FE + ((1/2)^n)+(1+FA)
	end
	println("The probability that two alleles are identity by descent is ", FE)
end

ibd()