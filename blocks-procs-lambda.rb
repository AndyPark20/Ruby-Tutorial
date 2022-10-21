
grades = [92,95,45]



def grade_sorter(grades,&block)
    grades.each do |z|
        block.call(z)
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

grade_sorter(grades, &print_lambda)
