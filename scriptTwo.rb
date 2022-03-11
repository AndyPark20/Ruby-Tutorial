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
def sort_it(array)
    array.sort! do |x,y|
        y <=>x
    end
    print array
end

sort_it([7,10,1,5,6])
