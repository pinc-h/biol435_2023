# Alex Pinch, BIOL435
# Last updated Jan. 30th 2023

# Given number of individuals for dominant and recessive homozygote and 
# heterozygotes, or allele frequencies, find genotype frequencies under HW

print("Enter the homozygote recessive:")
homozygote_recessive=parse(UInt8, readline())
print("Enter the heterozygote:")
heterozygote=parse(UInt8, readline())
print("Enter the homozygote dominant:")
homozygote_dominant=parse(UInt8, readline())

pop_total=(homozygote_recessive+heterozygote+homozygote_dominant)*2
println("The population total is ", pop_total)

p = ((2*homozygote_dominant)+(1*heterozygote))/(pop_total)
println("p = ",p)
q = 1 - p
println("q = ",q)

homozygote_dominant_genotype_freq=(p^2)
heterozygote_genotype_freq=2*p*q
homozygote_recessive_genotype_freq=(q^2)

println("Homozygote dominant genotype frequency: ", homozygote_dominant_genotype_freq)
println("Heterozygote genotype frequency: ", heterozygote_genotype_freq)
println("Homozygote recessive genotype frequency: ", homozygote_recessive_genotype_freq)
