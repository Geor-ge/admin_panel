class PagesController < ApplicationController

  def home
    if session[:user_id] != nil
      redirect_to '/cohorts'
    end
  end
end
