class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end
    
    def create
        @user = User.new(user_params)
      if @user.save
        redirect_to @user
      else
        render :new
      end
    end
    
    # do not need an index
    def index
    
    end

    def update
    
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to '/' #create root 
    end
    
      private
      def user_params
        params.require(:user).permit(:username, :password)# maybe add email? 
      end


end
