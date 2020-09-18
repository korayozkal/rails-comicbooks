class ReviewsController < ApplicationController
  #changed class names to reviews from collections to make more  
  def new
        @collection = Collection.new
        @comicbook_id = params[:comicbook]
        @comicbooks = Comicbook.all
      end
    
      def create
        @collection = current_user.collections.build(collection_params)
        if @collection.save
          redirect_to @collection.book, notice: "Review successfully created."
        else
          render :new
        end
      end
    
      private
    
      def collection_params
        params.require(:collection).permit(:rating, :comicbook_id, :review)
      end
    
end


#collections controller (create)

#new_user.collections.create(comicbook: new_comicbook, rating:  "xyz"  , review: "xyz" )

