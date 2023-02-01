# Alex Pinch, BIOL435
# Last updated Jan. 31st 2023

# THIS SCRIPT NEEDS INPUT IN THIS ORDER: 
# recessive genotype frequency, heterozygote genotype frequency, dominant genotype frequency

# !-- Caution --!
# This is working but giving the wrong answer. Probably the math is wrong.

recessive_freq=parse(Float32,ARGS[1])
heterozygote_freq=parse(Float32,ARGS[2])
dominant_freq=parse(Float32,ARGS[3])

p=((2*dominant_freq)-heterozygote_freq)/2
println(p)
q = 1 - p
println(q)
HE = 2 * p * q
HO = heterozygote_freq
F_hat=(1-(HO/HE))
println("Expected heterozygosity is ", F_hat)

