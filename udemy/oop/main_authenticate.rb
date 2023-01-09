
#Same directory
require_relative 'authenticate_modules'

#different directory
# $LOAD_PATH << "./"
# require ''

users =[
  {username:"andy", password: "password123"},
  {username:"jared", password: "password32"}
]

# associating it to the class not an object
hashed_users = Crud.create_secure_users(users)
p hashed_users
