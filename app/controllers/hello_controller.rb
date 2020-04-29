class HelloController < ApplicationController
    def my_action 
        render :json => {:hello => "hello from playerly api!"}       
    end
end