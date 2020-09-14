class ComicbooksController < ApplicationController
before_action :find_comicbook, only: [:show, :edit, :update, :destroy]
    
    def index
        @comicbooks= Comicbook.all 
    end 
 
    def show
    end

    def new
        @comicbook = Comicbook.new
    end

    def edit
    end

    def create
    #@comicbook = Comicbook.new(comicbook_params)
    #comicbook.user = current_user  
    @comicbook = current_user.comicbooks.build(comicbook_params)
        if @comicbook.save
            redirect_to @comicbook, notice: 'Comicbook was successfully created.'
        else
            render :new
        end
    end

    def update

        if @comicbook.update(comicbook_params)
           redirect_to @comicbook, notice: 'Book was successfully updated.'
        else 
           render :edit
        end 
    end 

    def destroy
        @comicbook.destroy
        render :edit
    
    private

    def find_comicbook
        @comicbook = Comicbook.find(params[:id])
        #@comicbook = ComicBook.find_by(id: params[:id])
    end 

    def book_params
        params.require(:comicbook).permit(:title, :number, :writer, :artist, :publisher)
    end

    

    


