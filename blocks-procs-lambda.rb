
grades = [92,95,45]



def grade_sorter(grades)
    grades.each do |z|
       yield(z)
        # puts "From calling method "
    end
end


#block
# grade_sorter(grades) do |x|
#     puts "grades are #{x}"
# end


#procs
# print_proc=Proc.new {|x| puts x}


#lambda
print_lambda = lambda {|x|puts "from lambda #{x}"}

# grade_sorter(grades, &print_lambda)
grade_sorter(grades) do |x|
    puts "from lambda #{x}"
end


# 10/21/2022 --> notes 
#Blocks and Yields go together!
#Procs and lambda will always use "&" when passed as an argument
