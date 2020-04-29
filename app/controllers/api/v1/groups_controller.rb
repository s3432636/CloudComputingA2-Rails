class Api::V1::GroupsController < ApplicationController
# You can use this skip_before_action to disable authentication in this controller for debugging
# (You won't need to attach an auth/bearer token to each request)
# skip_before_action :authenticate_request, only: [:show, :create, :index]

# GET /group/:id
   def show
    @group = Group.find(params[:id])
    render json: @group
   end

# GET /groups
   def index
    @groups = Group.all
    render json: @groups
   end

# POST /groups/register   
   def create
    #  We will need to use this @current_user's id to add to the relevant table for group ownership/admin
    #  @current_user = AuthorizeApiRequest.call(request.headers).result

    @group = Group.new(group_params)       
    @group.save
    # Probably set the group owner/admin here
    @groups = Group.all
    render json: @groups
   end

   private
       def group_params
           params.require(:group).permit(:name, :sport_id, :description, :email, :profile_image, :approval_type_id, :group_type_id, :has_skill_requirement, :skill_level_id, :city, :max_capacity)
       end
end
