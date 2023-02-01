# Alex Pinch, BIOL435
# Last updated Jan. 30th 2023
# This script calculates IBD from a single ancestor

# THIS SCRIPT NEEDS INPUT IN THIS ORDER: 
# number of inbreeding loops, number of unique individuals in each loop, given FA/ancestral inbreeding coefficient

function ibd()
	print("Inbreeding loops: ")
	loops = parse(Float32, readline())
	print("Number of unique individuals in each loop:" )
	n = parse(Float32, readline())
	print("Given FA: ")
	FA = parse(Float32, readline())
	FE = 0
	for i in 1:loops
		FE = FE + ((1/2)^n)+(1+FA)
	end
	println("The probability that two alleles are identity by descent is ", FE)
end

ibd()






