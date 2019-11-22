class GroupsController < ApplicationController
  before_action :authorized, only: [:index]

  def index
    render json: Group.all
  end 
  
  
end
