class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :comicbook

  #validates_presence_of :rating, :review
end
