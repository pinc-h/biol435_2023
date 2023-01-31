#!/bin/bash
# Alex Pinch, BIOL435 Jan. 2023
# From G. Coop, Chapter 2, Question 3
# On the coastal islands of British Columbia there is a subspecies of 
# black bear (Ursus americanus kermodie, Kermode's bear).
# Many members of this black bear subspecies are white; they're sometimes 
# called spirit bears.
# These bears aren't hybrids with polar bears, nor are they albinos.
# They are homozygotes for a recessive change in the MC1R gene.
# Individuals who are GG at this SNP are white, while AA and AG 
# individuals are black
# Below are the genotype counts for the MC1R polymorphism in a sample of 
# bears from British Columbia's island populations.
# AA = 42
# AG = 24
# GG = 21
# Allele frequency p + q = 1
# Genotype frequency p^2 + 2pq + q^2 = 1
# Rearranged for p:
# p = (2*q) + (1*pq) / total pop
julia ../scripts/genotype_freq.jl 42 24 21