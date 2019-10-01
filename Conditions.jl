#= syntax
if *condition 1*
    *option 1*
elseif *condition 2*
    *option 2*
else
    *option 3*
end =#
global x = 4
global y = 44
if  x >  y
    println("$x is bigger than $y")
elseif  x <  y
    println("$x is smaller than $y")
else
    println("$x and $y are same!")
end
# if we just want to return The larger of 2 numbers
if x > y
    x
else
    y
end
# Also By using Ternary operator
(x > y) ? x : y
# and operation
(x > y) && println("$x is larger than $y")
(x < y) && println("$x is smaller than $y")
