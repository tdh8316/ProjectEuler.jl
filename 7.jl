# 10001st prime

#=
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10001st prime number?
=#

count = 0
n = 1 # 1 is not a prime number.

function is_prime(x)
    for i = 2:floor(Integer, sqrt(x))
        x % i == 0 && return false;
    end
    return true
end

while true
  global n = n + 1
  if is_prime(n)
    global count = count + 1
  end
  if count == 10_001
    break
  end
end

println(n)
