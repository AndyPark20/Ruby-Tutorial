=begin
Bank Project
Functions
User can add relatives to the bank account (Have their own separate account, but tied to the main account)
User can type their last name and last 4 digits of their social security access their account
User can withdrawal money from account
User can add money to the account
User can view their balance
User can transfer money to other relatives
Primary user can ONLY see who has the most and least money
Primary user can delete relatives from the account
=end


#Gatchas
#if need to loop thru array with tracking index --> use each_with_index
#if need to set up a global variable use $

#Start with brand new account
$account_list =[]

$first_name =""
$last_name =""

puts "WELCOME to family bank central!"

def set_up_account
    if $account_list.length ==0
        puts "Please enter your first and last name to get started (ie: John Smith):"
        user_full_name = gets.chomp

        #Why do I need to reassign to the same variable to return an array?
        user_full_name=user_full_name.split(" ")

        #Loop thru user_full_name with using each_with_index, zero index will be the first name and the rest will be last name
        user_full_name.each_with_index do |value,index|
            case index
            when 0
                $first_name = value
            else
                $last_name=$last_name+value
            end                
        end
    end
    puts "welcome #{$first_name} #{$last_name}"
    $account_list.push({first_name:$first_name, last_name:$last_name})
    
end


set_up_account()



