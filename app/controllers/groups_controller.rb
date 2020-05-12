class GroupsController < ApplicationController
  def new
  end

  # GET /groups
  def index
    @groups = Group.all
    render json: @groups
   end
   
  def show
    @group = Group.find(params[:id])
    render json: @group
   end

   
end
