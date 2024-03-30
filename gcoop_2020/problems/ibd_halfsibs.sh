#!/bin/bash
# Alex Pinch, BIOL435 Jan. 2023
# From lecture slides, Allele Frequency

# In a pedigree, two half-sibs produce an offspring, 
# What is the probability that two alleles 'w' and 'x' are given to this offspring are IBD?

# Two inbreeding loops, four unique individuals, assumed FA is 0.1

julia ibd_sa.jl 2 4 0.1

