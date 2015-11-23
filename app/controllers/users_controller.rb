class UsersController < ApplicationController
  def index
    @usr = User.all.order(username: :asc )
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos.order(created_at: :desc )
  end
end
