println("I am excited")
my_num = "Akash"
typeof(my_num)
my_name = my_num
println(my_name)
# this is a comment
#= this is a multi line
comment
hell yeah ! =#
sum = 2 + 2
sub = 4 - 6
mul = 4 * 4
div = 28 / 7
power = 2 ^ 8
println(power)
"""this is a "string" """
typeof("A")
typeof('A')
# string interpolation
name = "Akash"
post = "Developer"

println("Hello my name is $name")
println("I am a $post")

#= string concatenation
by using string() method =#
concat = string("Hello there !","Do you like Julia?")
print(concat)
# by using *
s1 = "this is string 1"
s2 = "this is string 2"
println(s1*s2)
# by using $
println("$s1$s2")
# Dictionary
phonebook = Dict("Akash" => "9757147011", "Dad" => "9969517165", "Home" => "022-28402278")
# Adding a new value
phonebook["Mom"] = "9869306809"
phonebook
#returning value from dictionary
phonebook["Dad"]
phonebook["Home"]
# delete from dictionary
pop!(phonebook, "Akash")
phonebook
# Dictionary are not ordered so cannot acess by indexing
phonebook[1]
# Tuples (are ordered)
fav_animals = ("Lions","Dogs","Elephants")
fav_animals[1] # Julia is 1 indexed rather than 0
fav_animals
# Tuples are immutable so error
fav_animals[3] = "cats"
# Arrays
fav_colors = ["Red", "Black", "Blue"] #type is 'string'
fav_numbers = [1,3,4,7,9,18,19,37] #type is 'int 64'
mixed_array = ["Red",19,37,3.14,'A'] #hence type is 'any'
# Indexing in Arrays
fav_colors[1]
fav_colors[3] = "Gold"
fav_colors
# Adding items to array using push!
push!(fav_colors,"Blue")
# Deleting from array
pop!(fav_colors) #removes only the last element
# for deleting any numbers
filter!(e->e != 18,fav_numbers)
push!(fav_numbers,18)
# or you can use
deleteat!(fav_numbers, 8) #specify index after array name
# Creating arrays of Arrays
fav = [["Red","Black","Gold"],[1,3,4,7,19,37]]
fav
# creating random arbitarily demensional Arrays
random_array1 = rand(4,3) # creates a 2-dimensional Array
random_array2 = rand(4,3,2)
