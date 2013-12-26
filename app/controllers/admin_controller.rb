class AdminController < ApplicationController
  def index
  	@staffs = User.all.select {|user| user.users_type == 0 || user.users_type == 1}
  	@users = User.all
  end
end
