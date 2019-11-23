class KarmasController < ApplicationController
  before_action :authorized, only: [:create]

  def index
    render json: Karma.all
  end 
  
  def create
  end 

end
