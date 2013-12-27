class AdminController < ApplicationController
  def index
  	if params[:user].present?
  		if params[:staff].present?
  			@staffs = User.all.select {|user| user.users_type == 0 || user.users_type == 1}.include?(params[:user])
  		else 
  			@users = User.all
  		end
  	else
  		@staffs = User.all.select {|user| user.users_type == 0 || user.users_type == 1}
  		@users = User.all.select {|user| user.users_type == 2}
  end
end	
  def search
  end
end
