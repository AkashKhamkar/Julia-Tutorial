#loops
#While Loop
global n = 0
while  n < 10
    global n += 1
    println(n)
end
# While loop over an array
colors = ["Red","Blue","Green","Yellow","Pink"]
global i = 1
while i <=length(colors)
    color = colors[i]
    println("todays color is $color ! ")
    global i += 1
end
# For loop
for n in 1:10
    println(n)
end
for color in colors
    println("todays color is $color !")
end
# you can also change 'in' keyword with either "=" or "∈"
for n = 1:10
    println(n)
end
for n ∈ 100:110
    println(n)
end
#eg
m, n = 5, 5
A = zeros(m,n)
 for i in 1:m
     for j in 1:n
         A[i,j] = i+j
     end
end
println(A)
# Condensing 2 for loops
B = zeros(m,n)
for i in 1:m, j in 1:n
    B[i, j] = i + j
end
B
# But the more "julia" way to do this would be with an array comprehension
C = [i * j for i in 1:m, j in 1:n]
# eg will be using the above method in a for loop
for n in 1:10
    D = [i + j for i in 1:n, j in 1:n]
    display(D)
end
