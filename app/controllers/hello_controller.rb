class HelloController < ApplicationController
    skip_before_action :authenticate_request, only: [:my_action]
    def my_action 
        render :json => {:hello => "hello from playerly api!"}       
    end
end