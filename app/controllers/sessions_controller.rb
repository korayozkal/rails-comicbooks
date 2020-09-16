class SessionsController < ApplicationController
skip_before_action :if_logged_out

    def create
        @user = User.find_by(username: params[:username])
        if @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to comicbooks_path
        else
          @error = "Incorrect username and/or password"
          render :new
        end
    end


     def destroy
         session.clear
         redirect_to root_path
     end
end