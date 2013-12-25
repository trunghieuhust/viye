class HomeController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
  def index
  	@post = Post.all.take(3)
  	@user_posts = Post.all
  	@admin_posts_mienbac = []
  	@admin_posts_mientrung = []
  	@admin_posts_miennam = []
  	@all = Post.all
  	@all.each do |admin_post|
  		if admin_post.user.users_type == 0
  			if admin_post.tags.include?("Miền Bắc") || admin_post.tags.include?("mien bac") || admin_post.tags.include?("miền bắc")
  				@admin_posts_mienbac.push(admin_post)
  			elsif admin_post.tags.include?("Miền Trung") || admin_post.tags.include?("mien trung") || admin_post.tags.include?("miền trung")
  				@admin_posts_mientrung << admin_post
  			elsif admin_post.tags.include?("Miền Nam") || admin_post.tags.include?("mien nam") || admin_post.tags.include?("miền nam")
  				@admin_posts_miennam << admin_post
  			end  			  			
  		end
  	end
  end

end
