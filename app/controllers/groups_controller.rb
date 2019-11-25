class GroupsController < ApplicationController
  skip_before_action :authorized

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
    # byebug
    if @group.destroy
  
      render json: 'good job'
    else 
      render json: { errors: ["Deletion failed."] }, status: 500
 
    end 
  end 
  
  private 

  def id_params 
    @group = Group.find(params[:id])
  end 

  def group_params 
    params.require(:group).permit(:user_id, :group_image, :name)
  end 

end
