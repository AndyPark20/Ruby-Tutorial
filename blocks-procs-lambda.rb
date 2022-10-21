students = ["grey", "logan", "steve"]


students.each {|x| puts  x}


students.each do |x|
 puts "each: #{x}"
 puts x.length
end