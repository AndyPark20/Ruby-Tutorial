# #--------- Methods---------
# def printHello
#     print "Hello"
# end


# printHello()


# ------- Sorting ------

fruits = ["bananas", "apples", "pear"]

def sort_it(array)
    array.sort! do |first,second|
       first <=> second
    end
    puts array
end

sort_it(fruits)
