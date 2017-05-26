class FriendshipsController < ApplicationController


  def create
  	@friendship=@user.friendships.build(:friend_id=>params[:friend_id])

  	if @friendship.save
  		flash[:notice]="add friend"
  		redirect_to root_url
  	else
  		flash.now[:error]="Unable to add friend"
  		redirect_to root_url
  	end
  end

  def destroy
  	@friendship=current_user.friendship.find(params[:id])
  	@friendship.destroy
  	flash[:notice]= "Remove friendship"
  	redirect_to current_user
  end
end
