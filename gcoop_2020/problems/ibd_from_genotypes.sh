#!/bin/bash
# Alex Pinch, BIOL435 Jan. 2023
# From lecture slides, Allele Frequency

# We can calculate the inbreeding coefficient from genetic data based on HW expectations
# HE = heterozygosity expected
# HO = heterozygosity observed

# AA = 0.6
# AB = 0.2
# BB = 0.2

julia ibd_genotype_freq.jl 0.6 0.2 0.2

