class Api::UsersController < ApplicationController
  skip_before_action :authorized, only: [ :index, :create, :show, :update]

  def index 
    render json: User.all
  end 

  def show 
    @user = id_params
  end 

  def update
    
    @user = id_params
    if @user.valid?
      @user.update(user_params)
      render json: @user
    else 
      render :edit 
    end 
  end 

  def profile 
    render json: { user: UserSerializer.new(current_user) },
    status: :accepted
  end 

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, 
      status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def user_params 
    params.require(:user).permit(:username, :bio, :picture)
  end 

  def id_params 
    User.find(params[:id])
  end 

end
