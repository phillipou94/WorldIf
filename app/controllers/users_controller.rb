class UsersController < ApplicationController


  def create
  	@user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Parallel!"
      redirect_to root_url
    else
      render 'new'
    end

  end


def user_params
      params.require(:user).permit(:username, 
                                   :email, 
                                   :password_digest,
                                   :password_confirmation)
end




end
