#!/bin/bash
# Alex Pinch, BIOL435 Jan. 2023
# From G. Coop, Chapter 2, Question 5

# You extract a DNA sample from a crime scene. The genotype is 100/80 at
# the D16S529 locus and 70/93 at TH01.
# You have a suspect in custody. Assuming this suspect is innocent and of 
# European ancestry, what is the probability that their genotype would 
# match this profile by chance? (a false-match probability?)

# Locus D16S539
# allele name: 80, 90, 100, 110, 120, 121, 130, 140, 150
# allele count: 3, 34, 13, 102, 97, 1, 44, 15, 3

# Locus TH01
# allele name: 60, 70, 80, 90, 93, 100, 110
# allele count: 84, 42, 37, 67, 77, 1, 2

julia match_phenotype.jl