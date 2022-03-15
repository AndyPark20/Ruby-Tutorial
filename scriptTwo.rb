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
# movie_ratings.each_value do |x|
#     puts "Rating for the movie is #{x}"
# end

#symbol practive
# my_name ="andy"
# symbol = my_name.to_sym
# puts symbol.object_id


# movie_ratings.each do |x,y|
#     puts "#{x} has a rating of #{y}"
# end

# movie_ratings.each do |x,y|
#     if y >=4
#         puts "#{x} has a rating of #{y}"
#     end
# end

# movie_ratings.select do |x,y|
#     if y >=4
#         puts "select shown #{x} has a rating of #{y}"
#     end
# end 

#map

# #select
# my_array= [1,2,3,4]

# # def loop_each(array)
# #      array.each do |x|
# #         puts "#{x} + 2 = #{x+2}"
# #      end
# #  end

# # print loop_each(my_array)


# def loop_map(array)
#     array.map do |x|
#         if x >= 3
#             x
#         end
#     end
# end

# print loop_map(my_array)


# hashing ={
#     'movies' => "avengers",
#     'score' => 2,
#     'stream' => "yes"
# }



# puts "what is your favorite movie?"
# response = gets.chomp

# case response
# when "avengers"
#     puts "great I like that move too, the score for that movie is #{hashing['score']}"
# else
#     puts "Sorry I don't watch #{response}"
# end


# movie_library = Hash.new

# puts "What would you like to do?"
# command = gets.chomp

# case command
# when "add"
#     puts "What is the movie you want to add?"
#     movie_add =gets.chomp
#     puts "What score you want to give?"
#     movie_rating = gets.chomp
#     movie_library[movie_add.to_s] = movie_rating
# end

# puts movie_library


# my_name ="andy"

# puts !my_name == my_name



# Creating Functions

# def hello(name)
#      print "hello #{name}"

# end

# hello('andy')

"L".upto("Z") do |x|
    puts x
end