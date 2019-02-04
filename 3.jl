# Largest prime factor

#=
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
=#

const number = 600851475143

function primefactorsOf(n)::Array
    primeArray = Int[]
    d = 2
    while d <= n
        if n % d == 0
            append!(primeArray, d)
            n = n / d
        else
            d += 1
        end
    end
    return primeArray
end

println(maximum(primefactorsOf(number)))
