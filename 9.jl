# Special Pythagorean triplet

#=
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=#

answer = 0

for a in 1:1000, b in 1:1000, c in 1:1000
  if a + b + c == 1000 && a^2 + b^2 == c^2
    global answer = a * b * c; break
  end
end

println(answer)
