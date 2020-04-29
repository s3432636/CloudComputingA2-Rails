Rails.application.routes.draw do
  get 'memberships/new'
  get 'roles/new'
  get 'groups/new'
  get 'user_sports/new'
  get 'skill_levels/new'
  get 'group_types/new'
  get 'approval_types/new'
  get 'sports/new'
  get 'genders/new'
  get 'users/new'

  namespace :api do
    namespace :v1 do
      resource :users do
      end
      get 'groups', to: 'groups#index'
      get 'groups/:id', to: 'groups#show'
      post 'groups/register', to: 'groups#create'
      # end
    end
  end
  #config/routes.rb
  post 'authenticate', to: 'authentication#authenticate'
  get 'hello', to: 'hello#my_action'
end
