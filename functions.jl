# Declaring the function
function hello(name)
    println("hello $name ! , How are you doing today ?")
end
function square(number)
    number^2
end
# Declaring functions in Julia
hello("Akash")|
square(25)
# Declaring functions in a single line
hello2(name) = println("Hi $name, What's up?")
hello2("Akash")
sq2(number) = number^2
sq2(16)
# Declaring functions as "anonymous" functions
hello3 = name -> println("Hi $name, S'up?")
hello3("Akash")
sq3 = number -> number^2
sq3(27)
# Duck-typing in Julia
# whatever you give input the function will accept it blindly
hello(38)
A = rand(3,3)
sq2(A) #=the reason it works here is it squares the input
here the square of matriz is a well defined operation
but if try to pass a 1-D array(vector) to sq2 we get an error =#
B = rand(3)
sq2(B)
#=Mutating vs Non-Mutating functions
by convention functions followed by"!" are Mutating(changes the actual data)
where as functions without "!" do not cahnge the data =#
Num = [7,4,19]
sort(Num)
Num # changes do not occur in Num
sort!(Num)
Num
#= Broadcasting in Julia denoted by " . "
so f.() is broadcasting (here the function is applied to every single element)
and f() is not broadcasting (here the function is applied on the entire thing as 1 single element) =#
J =  [i + 3*j for j in 0:2, i in 1:3]
sq2(J) # here matrix J is multiplyed by itself
sq2.(J) # here every single element in the matrix is squared
# so f.(v) is defined for some vector v and f(v) is not defined
global v = [1,2,3]
sq2(v)
sq2.(v)
