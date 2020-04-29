class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request
   
    def authenticate
      command = AuthenticateUser.call(params[:email], params[:password])
      fname = User.find_by_email(params[:email]).fname
   
      if command.success?
        render json: { auth_token: command.result, user: {name:fname, email: params[:email]}  }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
    end
   end