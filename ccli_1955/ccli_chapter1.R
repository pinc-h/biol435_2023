#' Population Genetics, by Ching Chun Li
#' University of Chicago, 1955

#' Chapter 1: Large Random-mating populations
#' Notes and exercises

#' 1. W. E. Castle (1903) and Karl Pearson (1904) showed that if the F2 individuals from an original cross AA x aa
#' are allowed to mate at random, the composition of the next generation would be the same as that in the F2,
#' viz., (1/4, 1/2, 1/4). This is simply a particular case of the Hardy-Weinberg proportions with the p = q = 1/2. 
#' The De Finetti point representing this population is the vertex (maximum point of the parabola in the De Finetti triangle).

#' 2. Gene frequency ratio.-Let u = p/q and divide the Hardy-Weinberg proportions by q^2 throughout; 
#' an equilibrium population then assumes the form (u^2, 2u, 1).
#' The sum of these three proportion numbers is (u + 1)^2, instead of unity.
#' As p varies from 0 to 1, the ratio u varies from 0 to infinity (always positive).
#' It is seen that p = (u^2 + u)/(u + 1)^2 = u/(u + 1). 
#' Similarly, q = 1/(u + 1). Also, p:q = u:1. Using this notation, and with u = 0.2/0.8 = 1/4, the population (.04, .32, .64)
#' assumes the form (1/16, 1/2, 1). All the properties concerning large random-mating populations described in the text may just
#' as simply be shown in terms of u. Much of Haldane's earlier work dealt with u rather than with p and q. In some genetics problems,
#' particularly those concerning natural selection, the formulas take a simpler form in terms of u than in terms of q.

#' 3. If the frequency of one gene is very low, so that the frequency of the other allele is close to unity (p + q = 1),
#' the Hardy-Weinberg proportions take a limiting form. Suppose q is so small that q^2 is negligible; then the equilibrium
#' population is very close to (1 - 2q, 2q, 0). Nearly all the recessive genes are in the heterozygous condition, and the proportion
#' of heterozygous individuals is approximately twice the recessive-gene frequency (Haldane, 1927; Moree, 1950). For human albinism,
#' if q = 0.007, the proportion of heterozygotes is approximately H = 0.014 = 1/70.

#' 4. What will be the composition of the next generation under the system of random mating if the initial population is
#' (.16, .48, .36)?
#' D=p^2, H=2pq, R=q^2, D=AAfreq, H=Aafreq, R=aafreq, D+H+R=1
#' p=D+1/2H, q=1/2H+R
D = 0.16 # aka F1_AA
H = 0.48 # aka F1_Aa
R = 0.36 # aka F1_aa
find_offspring_freq <- function(D, H, R) {
  p = D + 0.5*H
  q = 0.5*H + R
  F2_AA_AA = p^4
  F2_AA_Aa = 4*(p)^3*q
  F2_Aa_Aa = 4*(p)^2*(q)^2
  F2_AA_aa = 2*(p)^2*(q)^2
  F2_Aa_aa = 4*p*(q)^3
  F2_aa_aa = (q)^4
  genotype_equations <- matrix(c(F2_AA_AA, F2_AA_Aa, F2_Aa_Aa, F2_AA_aa, F2_Aa_aa, F2_aa_aa), ncol=1, byrow = TRUE)
  colnames(genotype_equations) = c("Genotype Frequency")
  rownames(genotype_equations) = c("AA x AA", "AA x Aa", "Aa x Aa", "AA x aa", "Aa x aa", "aa x aa")
  genotype_freq = as.table(genotype_equations)
  sum = F2_AA_AA + F2_AA_Aa + F2_Aa_Aa + F2_AA_aa + F2_Aa_aa + F2_aa_aa
  if (sum == 1) {
    print("The population is in Hardy-Weinberg Equilibrium.")
  } else {
    print("Numerical error")
  }
  return (genotype_freq)
}
find_offspring_freq(D, H, R)
#' 5. Find the proportions of the three genotypes in the next generation for the following populations whose individuals mate at random:
#' (.25, .10, .65); (.30, 0, .70); (0, .60, .40)
D1=0.25
H1=0.10
R1=0.65
D2=0.30
H2=0
R2=0.70
D3=0
H3=0.60
R3=0.40
find_offspring_freq(D1, H1, R1)
find_offspring_freq(D2, H2, R2)
find_offspring_freq(D3, H3, R3)

#' 6. Check the following populations which are in equilibrium and calculate the proportions for those which are not:
#' (0.50, 0, 0.50); (25, 10, 1); (0.36, 0.15, 0.49); (1, 1, 1/4); (0.09, 0.10, 0.81); 
#' (0.45, 0.45, 0.1); (0.22, 0.36, 0.42); (0.5625, 0.3750, 0.0625)
D1=0.5
H1=0
R1=0.5
D2=(25/(25+10+1))
H2=(10/(25+10+1))
R2=(1/(25+10+1))
D3=0.36
H3=0.15
R3=0.49
D4=(1/(1+1+0.25))
H4=(1/(1+1+0.25))
R4=(0.25/(1+1+0.25))
D5=0.09
H5=0.10
R5=0.81
D6=0.45
H6=0.45
R6=0.10
D7=0.22
H7=0.36
R7=0.42
D8=0.5625
H8=0.3750
R8=0.0625
find_offspring_freq(D1, H1, R1)
find_offspring_freq(D2, H2, R2)
find_offspring_freq(D3, H3, R3)
find_offspring_freq(D4, H4, R4)
find_offspring_freq(D5, H5, R5)
find_offspring_freq(D6, H6, R6)
find_offspring_freq(D7, H7, R7)
find_offspring_freq(D8, H8, R8)
#' (0.50, 0, 0.50) is in equilibrium
#' (0.22, 0.36, 0.42) is in equilibrium
#' (0.5625, 0.3750, 0.0625) is in equilibrium

#' 7. If we let v = 1/u = q/p, show that an equilibrium population will assume the form (1, 2v, v^2).
u=q/p
v=1/u
D=1
H=2*v
R=v^2
p = D + 0.5*H
q = 0.5*H + R
if (D + H + R == 1) {
  print("An equilibrium population will assume the form (1, 2v, v^2)")
} else {
  print("An equilibrium population will not assume the form (1, 2v, v^2)")
}
# Will have to do on paper (rearrange equations)

#' 8. Show that the maximum value of H = 2u/(u + 1)^2 is attained when u = 1
u=1
H = (2*u)/(u + 1)^2
#' H = 0.5

#' 9. What percentage of a random-mating population showing 5 per cent recessives is heterozygous?
q=0.05
H = 2*(1-(sqrt(q)))*(sqrt(q)) # Rearranged from p^2 + 2pq + q^2 = 1, for genotypes
#' Percent heterozygous: 0.3472

#' 10. If there was 5 per cent dominants in the population, what would be percentage heterozygotes?
p=0.05
q=0.95 # For alleles, p + q = 1
H = 2*(1-(sqrt(q)))*(sqrt(q))
#' Percent heterozygous: 0.04935
#' From textbook: H = 2(0.02532)(0.97468) = 4.936 per cent, while the proportion of AA is only (0.02532)^2 = 0.064 per cent.
#' Thus we see that the great majority of dominants are heterozygotes and that therefore Aa x aa matings will be far more
#' numerous than AA x aa.

#' 11. Calculate the genotypic proportions of equilibrium populations with q = 0.1, 0.2, ... 0.9 and plot these points in an
#' equilateral triangle.
library(ggplot2, plotly, readr, dplyr, tidyr)
triangle_data <- data.frame(
  D = c(),
  H = c(),
  R = c()
)
triangle_data
q = 0.1
for (i in 1:8) {
  p = 1-q
  H = 2*(1-(sqrt(q)))*(sqrt(q))
  R = 2*(1-(sqrt(p)))*sqrt(p)
  D=(sqrt(H))/4*R
  q = q + 0.1
  D=D*100
  H=H*100
  R=R*100
  triangle_data = rbind(triangle_data, c(D, H, R))
  print(q)
}
colnames(triangle_data) = c("D", "H", "R")
rownames(triangle_data) = 1:8
triangle_data
# These utility functions were copied from: https://rpubs.com/tskam/ternary_plot
label <- function(txt) {
  list(
    text = txt, 
    x = 0.1, y = 1,
    ax = 0, ay = 0,
    xref = "paper", yref = "paper", 
    align = "center",
    font = list(family = "serif", size = 15, color = "white"),
    bgcolor = "#b3b3b3", bordercolor = "black", borderwidth = 2
  )
}
axis <- function(txt) {
  list(
    title = txt, tickformat = ".0%", tickfont = list(size = 10)
  )
}

ternaryAxes <- list(
  aaxis = axis("Dominant"), 
  baxis = axis("Heterozygous"), 
  caxis = axis("Recessive")
)
plot_ly(
  triangle_data,
  a = ~D,
  b = ~H,
  c = ~R,
  color = I("black"),
  type = "scatterternary"
) %>%
  layout (
    annotation = label("Ternary Markers"),
    ternary = ternaryAxes
  )

#' 12. Romashov and Ilyina (1942) collected 14,345 foxes, of which 12 were black, 678 intermediate, and 13,655 red.
#' Find the frequencies of the black and red genes in this population. Are the observed numbers consistent with those expected from
#' the Hardy-Weinberg Law?
total_foxes = 14345
black_foxes = 12 # Recessive
intermediate_foxes = 678 # Heterozygous
red_foxes = 13655 # Dominant
p= (2*(red_foxes)+intermediate_foxes)/(2*total_foxes)
q = (1-p)
#' Yes, these numbers are expected from the Hardy-Weinberg law.

#' 13. With p + q = 1, verify the following relations:
#' i) p + 2q = 1 + q = 2 - p; ii) 1 - 2q = p - q;
#' iii) p^2 + pq^2 = pq = q - q^2; iv) (1-2q)^2 = (1-2p)^2;
#' v) q^3 + pq^2 = q^2 = (1-p)^2 vi) p^2 -q^2 = p - q
#' vii) p(1+q) = 1 - q^2 = p(2 - p); viii) (1 - 2p)/pq = (1/p)-(1/q);
#' Must do these on paper, requires rearranging equations.


#' 14. Let x, y, z be the proportions of AA, Aa, aa respectively, in a population where x + y + z = 1, show that
#' (2x + y)(y + 2z) = 4xz - y^2 +2y.
#' If it is a random-mating population, so that 4xz - y^2 = 0, what will be the value of (2x + y)(y + 2z)?
#' Must do this on paper, requires rearranging equations.

#' 15. If we were to let 2y denote the proportion of Aa in a population (x + 2y + z = 1), many of the expressions in this
#' and later chapters would usually take a simpler form. Thus, p = x + y and q = y + z. The equation of the parabola
#' representing equilibrium populations in Figure 3 would be then xz - y^2 = 0. It is worth noting that this equation may be
#' written in a more generalized form:
#' (x/x + y) + (z/y + z) = 1
#' The fraction (x)/(x + y) is that proportion of an allele which is in homozygous condition. We shall see that this form may
#' readily be extended to the case of multiple alleles.









