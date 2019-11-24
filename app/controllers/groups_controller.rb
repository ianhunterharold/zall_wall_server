class GroupsController < ApplicationController
  before_action :authorized, only: [:create, :edit]

  def index
    render json: Group.all
  end 

  def edit
    
  end 
  
  
end
