class UsersController < ApplicationController
  def index
  	@users=User.all
  end

  def show
  	@user=User.find(params[:id])
  end

  def new
  	@user=User.new
  end

  def edit
  end

  def create
  	@user = User.new(user_params)
 
    if @user.save
      session[:user_id]=@user.id
      flash[:notice]="Thanks For sigin up"
       redirect_to @user
    else
	   render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name,:last_name,:uname,:image,:email,:password)
  end

end
