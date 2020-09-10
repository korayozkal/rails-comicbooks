class Comicbook < ApplicationRecord
    has_many :collection
    has_many :users, through: :collections  
    #validates_presence_of :title, :number
end
