#Review Objects and hashing keys

# andy ={
#     "age" => 26,
#     "profession" => "engineer",
#     "food" => "pizza"
# }

#Change the strings into symbol

andy ={
    age: 26,
    profession: "engineer",
    food: "pizza"

}

#add key/values
andy[:sport] = "f1 racing"

#delete key/values
andy.delete(:age)

puts andy