class User < ApplicationRecord
  has_many :collections
  has_many :comicbooks, through: :collections 
  
#validates_presence_of :username, uniquness: true 
#has_secure_password => activate when setting up user
#Note to myself => validations 

end
