class SessionController < ApplicationController
  def sign_up
    @user = User.new
  end

  def create_user
    user_params = params.require(:user).permit(:username, :password, :password_confirmation)
    user = User.new(user_params)
    if user.save
      auto_login(user)
      redirect_to session_sign_in_path
    else
      redirect_to session_sign_up_path, error: user.errors.full_messages
    end
  end

  def sign_in
    @user = User.new
  end

  def create_session
    user_params = params.require(:user).permit(:username, :password)
    user = User.find_by_username(user_params[:username])
    if user && login(user.username, user_params[:password])
      auto_login(user)
      redirect_to root_path
    else
      redirect_to session_sign_in_path, error: 'Username and password combination is not correct'
    end
  end

  def destroy
    logout

    redirect_to root_path, info: 'Logged Out!'
  end
end
