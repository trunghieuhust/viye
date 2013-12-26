class HomeController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
  def index
  	@post = Post.all.take(3)
  	@user_posts = Post.all
  	@admin_posts_mienbac = []
  	@admin_posts_mientrung = []
  	@admin_posts_miennam = []

	@posts_mienbac = Post.tagged_with("Miền Bắc")
	@posts_mientrung = Post.tagged_with("Miền Trung")
	@posts_miennam = Post.tagged_with("Miền Nam")  	

	@admin_posts_mienbac = @posts_mienbac.select{|post | post.user.users_type == 0 || post.user.users_type == 1}
	@admin_posts_mientrung = @posts_mientrung.select{|post | post.user.users_type == 0 || post.user.users_type == 1}
	@admin_posts_miennam = @posts_miennam.select{|post | post.user.users_type == 0 || post.user.users_type == 1}
  end

end
