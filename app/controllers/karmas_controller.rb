class KarmasController < ApplicationController


  def index
    render json: Karma.all
  end 

end
