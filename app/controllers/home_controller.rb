class HomeController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
  def index
  	@post = Post.all.take(3)
  end
end
