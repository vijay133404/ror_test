class UsersController < ApplicationController
	 before_action :check_save_and_copy

	def new
		if session[:type] != 1
			session[:user_details] = ""
			session[:facility] = ""
		end
		@user = User.new
	end	

	def check_save_and_copy
		if params[:commit] == 'save'
			@users = create
			redirect_to users_path
		elsif params[:commit] == 'save&copy'
			@facility = create
			session[:type] = 1
			session[:user_details] = @user
			session[:facility] = @facility.reject{|x| x == ""}.map{|x| x.to_i}
			redirect_to new_user_path
		end	
	end

	def create
		@user = User.new(users_params)
		  if @user.save!
			params[:user][:facility_users].each do |facility|
		  	 FacilityUser.create(user_id: @user.id,facility_id:facility)
		  	end
		end
	end

	def index
		@users = User.all
	end


	private
    
    # Only allow a list of trusted parameters through.
    def users_params
      params.require(:user).permit(:first_name, :last_name, :email, :dob, :gender, :role,:facility_users)
    end
end
