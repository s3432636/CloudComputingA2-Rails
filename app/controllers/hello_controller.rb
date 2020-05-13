class HelloController < ApplicationController
    skip_before_action :authenticate_request
    
    def my_action 
        render :json => {:hello => "hello from playerly api!"}       
    end
end