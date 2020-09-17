class StaticController < ApplicationController
    skip_before_action :if_logged_out
  end