using Statistics, CSV

function FST(pop1::Array{Float64,1}, pop2::Array{Float64,1})
    n1 = length(pop1)
    n2 = length(pop2)
    total_mean = mean([pop1; pop2])
    within_group_variance = (n1 * var(pop1) + n2 * var(pop2)) / (n1 + n2)
    between_group_variance = (n1 * n2 / (n1 + n2)^2) * (mean(pop1) - 
mean(pop2))^2
    FST = between_group_variance / within_group_variance
    return FST
end

println("Enter the name of the CSV file:")
file_name = readline()
data = CSV.read(file_name)

pop1 = data[:,1]
pop2 = data[:,2]

println("FST: ", FST(pop1, pop2))
