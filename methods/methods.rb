


#operators
<=> this is a comparison operator 
0 if the comparison is same
1 if the first operand is larger than second operand
-1 if the second operand is larger than first

#Methods
upcase = capitalizes everything
downcase = lowercases everything
gets = gets response from the user
capitalize= capitalizes the first letter
include? = looks for a specific value and if found within the value it will return true else it will return false;
gsub! = replace a value with a new value
split(",") = splits a string based off the parameter, and will return an array
sort_by = sorts values from smallest to largest (Its like sortby)
to_s = converts to string
to_sym = converts to symbol
intern = converts to symbol but will internalize
sort! = will sort the values chronlogically (numbers will be smallest to largest)
#objects
object_id = gets ID of an Object (gives you numerical number)
select = filter by certain criteria
each_key=iterates over keys
each_value = iterates over values


#loops
while loop = will loop thru as long as the condition is true
Until loop = will loop thru as long as the condition is false
For loop = will loop as long as the condition is true (.. will go to the highest value, ... will stop the second highest value)

#Iterator loops
loop do = ????
times do = similar to for loop, but very compact
Each do (Array) =Used to loop thru an array, {} can be deleted with the word do (i.e. array.each do |x|)
Each do (Objects ) = Used to loop thru an object, there is a second argument |x,y|

#Objects
Hash.new creates a new hash Object




#######################Gatcha!#######################
#unless is used to reverse if and else if statement
#use "end" when using else and else if
# ! in method are dangerous methods, meaning that it will mutate the original value if
# IF ! is not in an method, this means that it is safe method, it will not change the original value
# ?in a method is trying to say that it will show true or false value.
# gets also adds a blank line just like puts
# when using splat (*) in a function, the first argument will always be the index 0 value, and the rest will be in an array
#Symbols are immuatable values while strings are (also Symbols are faster in access as they allocate one time in the memory)
#objects are written like javascript now with colon

###LOOPS AND ITERATION#####
#For loop uses 2 or 3 dots, 2 dots mean go to the highest number, 3 dots mean go to the number right before highest number
#Unlike Javascript incrementing or decrementing only works with += -= rather than ++ or --
#when to use loop do vs for loop


###Objects
#Key Values pairs are paired by => NOT : like Javascript

###Data Structures
##Arrays
#no questions

###METHODS
# you can use * Splat argument to show that you are using more than one argument
# Blocks do not have a name, they are either defined by do and end or by {}

###HASH AND SYMBOLS
##Objects
# : vs ""
##symbols
#strings is NOT equal to :symbols





#Need to go over
#While vs until
#Project on loops and iteration REDACTED
#Why does Hash.new == {} equals true? in Javascript its false?
# Use do to delete {}?
#ON Slide 1 for Create a Histogram why is there (0) next to Hash.new? (Looks like its just a default value in case the seach value is not there)
#What does sort_by return?????
#Blocks vs Methods
#when calling method do you need to put into ()? or don't need it?
#to_sym vs intern (symbol methods)
#if you use Js syntax to write objects does that mean its still symbols? :dog => 1 vs dog:1 ?
