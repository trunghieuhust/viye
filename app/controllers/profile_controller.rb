class ProfileController < ApplicationController
  def show
  	@posts = Post.where(:user_id => current_user.id)
  	@posts = Post.order("id desc")
  end

  def index
  end
end
