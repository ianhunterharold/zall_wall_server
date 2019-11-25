class GroupsController < ApplicationController
  before_action :authorized, only: [:create, :edit, :destroy]

  def index
    render json: Group.all
  end 

  def edit
  end 

  def create
    @group = Group.create(group_params)
    render json: @group
  end 



  def destroy 
    @group = id_params 
    @group.destroy
  end 
  
  private 

  def id_params 
    @group = Group.find(params[:id])
  end 

  def group_params 
    params.require(:group).permit(:group_id)
  end 

end
