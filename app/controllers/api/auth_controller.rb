class Api::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index 
  end 

  def create
    
    p params
    # p 'hi my name is ian'
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
      token = encode_token({id: @user.id, username: @user.username })
        # render the next thing you need to see when you log in 
      render json: { jwt: token }, status: :accepted
    else 
      render json: { message: 'Invalid username or password'}, status: :unauthorized
      # head :not_found
    end 
  end 



  private
  
  def user_login_params
    params.require(:auth).permit(:username, :password)
  end 
end

