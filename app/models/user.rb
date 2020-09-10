class User < ApplicationRecord
  has_many :collections
  has_many :comicbooks, through: :collections 
  
#has_secure_password => activate when setting up user
#Note to myself => validations 

end
