class SessionsController < ApplicationController
  def create
    p "PARAMS"
    p params
    p session_params
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      login!
      puts "logged in user:"
      p @user
      render json: {logged_in: true, :user => @user}
    else
      render json: { status: 401, errors: ['no such user', 'verify your email or password and try again or signup']}
    end
  end

  def is_logged_in?
    if logged_in? && current_user
      render json: {logged_in: true, :user => current_user}
    else
      render json: {logged_in: false, message: 'no such user'}
    end
  end

  def destroy
    logout!
    render json: { status: 200, logged_out: true}
  end

  private

  def session_params
    params.require(:user).permit(:username, :email, :password, :playroom_id, :draw)
  end
end
