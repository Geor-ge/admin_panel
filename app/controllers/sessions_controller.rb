class SessionsController < ApplicationController

  def login
    if session[:user_id] != nil
      redirect_to '/cohorts'
    end
    # login form
  end


  def create
    admin = Admin.find(1)
    if params[:user_name] == admin.user_name
      if admin.authenticate(params[:password])
        session[:user_id] = admin.id
        print session
        redirect_to '/cohorts'
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end



end
