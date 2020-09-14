class ApplicationController < ActionController::Base

        def current_user
          @user ||= User.last
        end
      end

end

#Double check