
grades = [92,95,45]



def grade_sorter(grades,&block)
    grades.each do |z|
        block.call(z)
    end
end

grade_sorter(grades) do |x|
    puts "grades are #{x}"
end