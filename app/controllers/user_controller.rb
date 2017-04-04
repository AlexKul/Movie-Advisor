class UserController < ApplicationController
  before_action :set_user

  def show
    @user = User.find(params[:id])
  end


  def watchlist
  	@watchlist = @user.relations.where seen: false, like: true 
  end

  def nopelist
  	@nopelist = @user.relations.where seen: false, like: false 
  end

  def seenlist
  	@seenlist = @user.relations.where seen: true
  end


  def set_user
  	@user = User.find(params[:user_id] || params[:id])
  end
end
