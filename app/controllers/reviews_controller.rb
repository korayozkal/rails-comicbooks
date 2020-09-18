class ReviewsController < ApplicationController
    before_action :redirect_if_logged_out
    #before_action :set_comicbook, only: [:index, :new]
    #before_action :set_review, only: [:show, :edit, :update]


    def index
      @comicbook = Comicbook.find(params[:comicbook_id])
      @reviews = @comicbook.reviews
    end 
    
    def new 
      @comicbook = Comicook.find(params[:comicbook_id])
      @review = Review.new
    end 

    def create
      @review = current_user.reviews.build(review_params)
      if @reviews.save
        edirect_to comicbook_reviews_path(@review.comicbook), notice: "Review successfully created."
      else
        render :new
      end
    end
    
    def show
       @review = Review.find(params[:id])
    end
  
    def edit
       @review = Review.find(params[:id])
    end
     
    def update
      @review = Review.find(params[:id])
      if @review.update(review_params)
        redirect_to comicbook_reviews_path(@review.comicbook)
      else
        render :edit
      end
    end

    private
    def review_params
        params.require(:review).permit(:rating, :comment)
    
    end

    #def set_comicbook
         #@comicbook = Comicbook.find(params[:comicbook_id])
    #end 

     #def set_review
          #@review = Review.find(params[:id])
     #end 

end