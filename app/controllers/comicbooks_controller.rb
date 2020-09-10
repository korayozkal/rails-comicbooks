class ComicbooksController < ApplicationController
    
    def index
        @comicbook= Comicbook.all 
    end 

end
