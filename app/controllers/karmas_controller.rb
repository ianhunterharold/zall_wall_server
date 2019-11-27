class KarmasController < ApplicationController
  skip_before_action :authorized

  def index
    render json: Karma.all
  end 
  
  def create
    @karma = Karma.create(karma_params)
    render json: @karma
  end
  
  
  private 

  def karma_params
      params.require(:karma).permit(:content, :user_id)
  end 
exit

end
