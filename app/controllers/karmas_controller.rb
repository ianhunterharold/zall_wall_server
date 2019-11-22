class KarmasController < ApplicationController
  before_action :authorized, only: [:index, :create]

  def index
    render json: Karma.all
  end 
  
  def create
  end 

end
