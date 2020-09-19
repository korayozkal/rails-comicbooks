class ComicbooksController < ApplicationController
    before_action :redirect_if_logged_out
    before_action :set_comicbook, only: [:show, :edit, :update, :destroy]
    
    def index
        @comicbooks= Comicbook.all 
    end 
    
    def new
        @comicbook = Comicbook.new
    end

    def create

        @comicbook = current_user.comicbooks.build(comicbook_params)
            if @comicbook.save
                redirect_to @comicbook, notice: 'Comicbook is created.'
            else
                render :new
            end
        end

    def show
    end

    def edit

        #redirect unless they are logged_in and right user
        if logged_in && current_user == @comicbook.user
    
    end

    def update
       
        if current_user && @comicbook.update(comicbook_params)
           redirect_to @comicbook, notice: 'Comicbook is successfully updated.'
        else 
           render :edit
        end 
    end 

        
    def destroy
        if current_user == comicbook.user
        @comicbook.destroy
        redirect_to comicbooks_path
        else 
        #redirect to somewhere
        end
    end 

    private
    def set_comicbook
        @comicbook = Comicbook.find(params[:id])
    end 

    def comicbook_params
        params.require(:comicbook).permit(:title, :number, :writer, :artist, :publisher)
    end
end 
