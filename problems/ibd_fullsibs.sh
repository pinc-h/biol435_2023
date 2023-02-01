#!/bin/bash
# Alex Pinch, BIOL435 Jan. 2023
# From lecture slides, Allele Frequency

# What is the inbreeding coefficient for the offspring of full siblings?
# Assume the original parents are not inbred (FA = 0)

# Two ancestors, two inbreeding loops, three individuals in each loop, inbreeding coefficient of 0 for the ancestors

julia ibd_ma.jl 2 2 0
# Will have to input "3" individuals for each breeding loop.

