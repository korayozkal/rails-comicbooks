class CollectionsController < ApplicationController
    def new
        @collection = Collection.new
        @comicbook_id = params[:comicbook]
        @comicbooks = Comicbook.all
      end
    
      def create
        @collection = current_user.reviews.build(collection_params)
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
