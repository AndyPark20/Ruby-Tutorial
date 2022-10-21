



array =[1,3,4,5]

# new_time = Proc.new do |x,y|
#     puts y if x==4
# end

def time do |x|
    puts x if x==4
end

# check_values = array.map(&new_time)

check_values= array.map
