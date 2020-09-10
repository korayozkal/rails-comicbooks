class Comicbook < ApplicationRecord
    has_many :collection
    has_many :users, through: :collections  

end
