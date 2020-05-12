class Api::V1::GroupsController < ApplicationController
# You can use this skip_before_action to disable authentication in this controller for debugging
# (You won't need to attach an auth/bearer token to each request)
skip_before_action :authenticate_request, only: [:index]

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
    @current_user = AuthorizeApiRequest.call(request.headers).result
    @group = Group.new(group_params)    
    if @group.save
      puts(@current_user.id)
      puts(@group.id)
      @membership = Membership.new(user_id: @current_user.id, group_id: @group.id, role_id: 4, is_banned: false)
      @membership.save
    end
    @groups = Group.all
    render json: @groups
   end

   private
       def group_params
           params.require(:group).permit(:name, :sport_id, :description, :email, :profile_image, :approval_type_id, :group_type_id, :has_skill_requirement, :skill_level_id, :city, :max_capacity)
       end
end
