class Api::V1::MembershipsController < ApplicationController
  def index
    @current_user = AuthorizeApiRequest.call(request.headers).result
    @groups = @current_user.groups
    render json: @groups
  end
  
  def show
    @membership = Membership.find(params[:id])
    render json: @membership
  end
  
  def new
    @membership = Membership.new
  end
  
  def create  
    my_params = membership_params  
    @current_user = AuthorizeApiRequest.call(request.headers).result
    @membership = Membership.new
    @membership.attributes = my_params
    @membership.user_id = @current_user.id
    @membership.group_id = my_params[:group_id]
    @membership.role_id = 2

    if @membership.save
      render json: { message: "Membership created" }, status: :ok
    else
      render json: @membership.errors.full_messages, :status => :bad_request
    end
  end
  
  def edit
    @membership = Membership.find(params[:id])
  end
  
  def update
    @membership = Membership.find(params[:id])
    @membership.update(membership_params)
  end
  
  private
  
  def membership_params
    params.require(:membership).permit(:user_id, :group_id, :role_id, :is_banned)
  end
end
