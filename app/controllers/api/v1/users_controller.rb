class Api::V1::UsersController < ApplicationController
    skip_before_action :authenticate_request, only: [:create, :index, :show]

    # GET /players
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.new(
            username: params[:username],
            email: params[:email],
            fname: params[:fname],
            lname: params[:lname],
            dob: params[:dob],
            password: params[:password],
            password_confirmation: params[:password_confirmation],
            gender_id: params[:gender_id]) 
        
        if @user.save
            render json: { message: "User Created" }, status: :ok
        else
            render json: @user.errors.full_messages, :status => :bad_request
        end
    end

    # GET /user/:id
    def show
        @user = User.find(params[:id])
        render json: @user
        # @users = User.all
        # render json: @users
    end   
end
