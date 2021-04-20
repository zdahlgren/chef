# Comments are marked w/ an octothorpe
=begin
	We can do multiline comments like this
	which is pretty neat
	and stuff
=end

puts "Hello World"
my_var = 5
puts my_var
x = 5
y = 15
sum = x + y
puts sum
name = "Zach"
age = 29
puts "Your name is #{name} and you are #{age} years old."


x = 5.0
y = 3
=begin
The interesting thing to note here is that, since x was declared to be a float, the output will be a float as well. 
If you want to get integer output, then you should declare both variables as integers.
=end

# addition
sum = x + y
puts sum

# subtraction
sub = x - y
puts sub

# multiplication
mul = x * y
puts mul

# division
div = x / y
puts div

# mod
mod = x % y
puts mod

string_1 = "Hello "
string_2 = 'World'
puts string_1 + string_2

string = "I love Ruby"
puts string.length

puts string.reverse

puts string.downcase
puts string.upcase


x = 10
if x > 7
	puts "x is greater than 7"
elsif x < 7
	puts "x is less than 7"
else
	puts "x is 7"
end

playing = false
unless playing
	puts "We're busy learning Ruby"
else
	puts "It's time to play games"
end


num = 0
case num
when 0
	puts "Zero"
when 1
	puts "One"
when 2
	puts "Two"
else
	puts "The entered number is greater than 2"
end

count = 1
while count < 10
	puts count
	count = count + 1
end

count = 6
until count > 10
	puts count
	count = count + 1
end

for count in 1...10
	puts count
end

5.times { puts "I am Learning Ruby!"}

days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
days.each { |day| puts day}
puts days[3]

days << "Funday" # adds funday to the end

days.insert(0, "TacoTuesday") # inserts TacoTuesday at position 0
days.each { |day| puts day}

puts days[-1] # prints the last element in array
 days.pop # removes the last element of days
 days.delete_at(2) # removes the element at position 2

1.times do
	puts "This is a code block!"
end


my_2d_array = [[1,2,3],[4,5,6]]
my_2d_array.each {|x| puts "#{x}\n"}
puts my_2d_array[1][1] # returns 5

my_array = [5, 9, 8, 2, 6]
puts my_array.include?(0) # returns false
puts my_array.include?(2) # returns true


print my_array.sort
# results in my_array = [2, 5, 6, 8, 9]

my_array = [5, 9, [8, 2, 6], [1, 0]]
print my_array.flatten
# results in my_array = [5, 9, 8, 2, 6, 1, 0]

my_array = [5, 9, 8, 2, 6]
print my_array.map { |item| item**2}
# results in my_array = [10, 18, 16, 4, 12]

person_hash = {
  "name" => "Jonathan",
  "age" => 25
 }
puts person_hash
puts person_hash["name"]
puts person_hash["age"]

# add to hash
person_hash["gender"] = 'male'
puts person_hash
# delete from hash
person_hash.delete("gender")
puts person_hash

# Iterate over hash
person_hash.each do |key, value|
 puts "#{key} is #{value}"
end

# has_key? method returns boolean
puts person_hash.has_key?("name")
puts person_hash.has_key?("height")

# The select method is usually used with a block and returns any key-value pairs that satisfy the condition in the block.
puts person_hash.select{ |key, value| key == "name"}

# The fetch method returns the value of the key you specify, if it exists in the hash.
puts person_hash.fetch("name")


=begin
	In Ruby, sets are collections of unique elements. 
	The order of the elements doesn’t matter, so they can’t be reliably referenced by an index. 
	Sets are useful when you want to ensure there are no duplicate items
=end
require 'set'
my_set = Set.new
my_set = Set.new([5, 2, 9, 3, 1])
print my_set
# prints #<Set: {5, 2, 9, 3, 1}>

my_set = Set.new([5, 2, 9, 3, 1])
my_set.each do |x|
 puts x
end

# defining a function
def greetings
 puts "Hello!"
end

# defining a function with arguments
def greetings_with_name(name="Zach")
 puts "Hello #{name}!"
end

def explicit()
	return "Howdy!"
end

def implicit(x,y)
	x*y
end

greetings
greetings_with_name
puts explicit
puts implicit(2,2)

# Using yield inside a method will allow us to call the method with a block of code that will be inserted in place of the yield keyword
# defining a method using yield
# You can also pass parameters to yield. 
def yielding_test
 puts "We're now in the method!"
 yield
 puts "We're back in the method!"
end
# calling the method with the block
yielding_test { puts "The method has yielded to the block and We're in the block now!" }