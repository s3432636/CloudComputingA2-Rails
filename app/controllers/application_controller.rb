class ApplicationController < ActionController::API
    # Uncomment the below code to enable authorization
    before_action :authenticate_request
    attr_reader :current_user
  
    private
  
    def authenticate_request
      @current_user = AuthorizeApiRequest.call(request.headers).result
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
  end
