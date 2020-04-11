# Summation of primes

#=
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=#

function primes_lower_than(n::Int)::Array
  array = trues(n)

  for i::Int in 2:floor(sqrt(n))
    if array[i]
      for j::Int in i*2:i:n
        array[j] = false
      end
    end
  end

  return [k for k in 2:n if array[k]]
end

println(sum(primes_lower_than(2_000_000)))
