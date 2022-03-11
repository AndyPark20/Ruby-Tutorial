# #--------- Methods---------
# def printHello
#     print "Hello"
# end


# printHello()


# ------- Sorting ------

# fruits = ["bananas", "apples", "pear"]

# def sort_it(array)
#     array.sort! do |first,second|
#        first <=> second
#     end
#     puts array
# end

# sort_it(fruits)


#function review

# def printHello(name)
#     print "Hello #{name}"
# end

# printHello('andy')

#Function to sort
# def sort_it(array)
#     array.sort! do |x,y|
#         y <=>x
#     end
#     print array
# end

# sort_it([7,10,1,5,6])

# using Objects
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

=begin
movie_ratings.each_key do |x|
    puts "title of the movie is #{x}"
end
=end

#Print values
move_ratings.each_key do |x|
    puts "Rating for the movie is #{x}"
end
