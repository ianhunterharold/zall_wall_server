class ApplicationController < ActionController::API
  before_action :authorized

  puts 'APPLICATION CONTROLLER HIT'

  def encode_token(payload= {})
    exp = 24.hours.from_now
    payload[:exp] = exp.to_i
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end 

  def auth_header
    # byebug
    request.headers['Authorization']
  end
  
  def decoded_token
    if auth_header
      # byebug
      token= auth_header.split(' ')[1]
      begin
        JWT.decode(token,'my_s3cr3t',true, algorithm:'HS256')
      rescue JWT::DecodeError
        nil 
      end 
    end 
  end 

    def current_user
      if decoded_token
        # byebug
        user_id = decoded_token[0]['user_id']
        puts user_id
        @user = User.find_by(id: user_id)
      end 
    end 

    def logged_in?
      !!current_user
    end 
    
    def authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
