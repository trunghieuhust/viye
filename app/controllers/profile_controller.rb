class ProfileController < ApplicationController
  def show
  	if params[:id].present?
  	@user = User.find(params[:id])
  	@posts = @user.posts
  else
  	@user = current_user
  end
end
  def index
  end
end
