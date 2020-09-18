class StaticController < ApplicationController
    skip_before_action :redirect_if_logged_out
end