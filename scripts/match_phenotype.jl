# Alex Pinch, BIOL435
# Last updated Jan. 31 2023

# !-- Caution --!
# Not working, don't run

print("Enter allele counts for locus 1:")
locus1_counts=parse(UInt8, readline())
print("Enter allele counts for locus 2:")
locus2_counts=parse(UInt8, readline())

locus1_total=sum(locus1_counts)
locus2_total=sum(locus2_counts)

locus1_allele_freq=[]
locus1_genotype_freq=[]
locus2_allele_freq=[]
locus2_genotype_freq=[]

for i in 1:locus1_counts
	locus1_allele_freq[i] = locus1_counts[i]/locus1_total
end

for i in 1:locus2_counts
	locus2_allele_freq[i] = locus2_counts[i]/locus2_total
end

println("The allele frequencies at locus 1 are: ")
println(locus1_allele_freq)
println("The allele frequencies at locus 2 are: ")
println(locus2_allele_freq)

# Next steps, find genotype frequencies from each locus allele frequency