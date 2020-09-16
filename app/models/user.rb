class User < ApplicationRecord
  has_many :collections
  has_many :comicbooks, through: :collections 
  has_secure_password 

  validates_presence_of :username, uniquness: true 

end
