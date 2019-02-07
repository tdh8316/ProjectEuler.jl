# Smallest multiple

#=
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=#

num = 0
answer = 0

while answer == 0
    global num, answer
    for i = 1:20
        if num % i != 0 break
        elseif i == 20 && num % i == 0 answer = num
        end
    end
    num += 1
end

println(answer)
