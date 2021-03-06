class AuthenticationController < ApplicationController
 skip_before_action :authenticate_request

 def authenticate
   @command = AuthenticateUser.call(params[:email], params[:password])

   if @command.success?
     render 'authenticate', status: :ok
   else
     render json: { error: @command.errors[:user_authentication].join(', ') }, status: :unauthorized
   end
 end
end
