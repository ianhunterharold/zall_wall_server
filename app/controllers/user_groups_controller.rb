class UserGroupsController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def index
    render json: UserGroup.all
  end 
  
  def create
  end 
  
  def update
  end 

  def destory
  end 



end
