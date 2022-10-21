

def proc_demo 
    print_proc = Proc.new {|x| return "From inside of Proc"}
    print_proc.call
    puts "Hello from out side of proc"
end

proc_demo