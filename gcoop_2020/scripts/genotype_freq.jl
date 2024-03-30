# Alex Pinch, BIOL435
# Last updated Jan. 30th 2023

# THIS SCRIPT NEEDS INPUT IN THIS ORDER: 
# number of recessive individuals, number of heterozygotes, number of dominants

recessive=parse(Int,ARGS[1])
heterozygote=parse(Int,ARGS[2])
dominant=parse(Int,ARGS[3])

pop_total=(recessive+heterozygote+dominant)*2
println("The population total is ", pop_total)

p = ((2*dominant)+(1*heterozygote))/(pop_total)
println("p = ",p)
q = 1 - p
println("q = ",q)

dominant_genotype_freq=(p^2)
heterozygote_genotype_freq=2*p*q
recessive_genotype_freq=(q^2)

println("Dominant genotype frequency: ", dominant_genotype_freq)
println("Heterozygote genotype frequency: ", heterozygote_genotype_freq)
println("Recessive genotype frequency: ", recessive_genotype_freq)
