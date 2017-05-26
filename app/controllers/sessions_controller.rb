class SessionsController < ApplicationController
  def new
  end

  def index
  end

  def create
  	user=User.find_by_uname(params[:uname])

  	if user && User.find_by_password(params[:password])
  		redirect_to user
  	else
  		flash.now[:error]="Invalid Email or Password"
  		render 'new'
  	end
  end

  
end
