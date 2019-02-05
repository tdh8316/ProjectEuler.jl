# Largest palindrome product

#=
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
=#

answer = 6974

for a = 100:999
    for b = 100:999
        ab = a * b
        if ab == parse(Int, reverse(string(ab))) && ab > answer
            global answer = ab
        end
    end
end

println(answer)
