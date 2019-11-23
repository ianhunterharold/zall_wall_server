class GroupsController < ApplicationController
  before_action :authorized, only: [:create]

  def index
    render json: Group.all
  end 
  
  
end
