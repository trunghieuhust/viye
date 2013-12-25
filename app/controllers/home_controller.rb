class HomeController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
  def index
  	@post = Post.all.take(3)
  	@user_posts = Post.all
  	@admin_posts_mienbac = Post.all
  	@admin_posts_mientrung = Post.all
  	@admin_posts_miennam = Post.all
  end
end
