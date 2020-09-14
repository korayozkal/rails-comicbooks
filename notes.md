Notes to myself 

Scope methods are class methods.
Because these are quaries concerning the whole table.

where
find
all
order

scope :method_name -> {where(color: 'red' )}

scope :high_ratings -> {where(rating: '5')}
This brings an array and we need to iterate.

In controller we call it Classname.method_name

Comicbook.high_ratings 
and to use it in views it would be @five_stars = Comicbook.high_ratings 
Or there is a long way like creating a class method 

def self.high_ratings
{where(rating: '5' )}
end

rake routes | grep users