class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
	end
	def new
		@user = User.new
		# @errors = @user.errors unless @user.valid? 

	end
	def create
		@user = User.new(params[:user])
		if @user.valid?
			@user.save
			redirect_to @user
		else 
		@errors = @user.errors unless @user.valid? 
		redirect_to new_user_path, alert: @errors.full_messages.each {|message| "#{message}"}
		end
	end


end
