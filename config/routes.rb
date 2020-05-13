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
      get 'users/:id', to: 'users#show'
      get 'users/', to: 'users#index'
      get 'groups', to: 'groups#index'
      get 'groups/:id', to: 'groups#show'
      post 'groups/register', to: 'groups#create'
      get 'memberships', to: 'memberships#index'
      post 'memberships/create', to: 'memberships#create'
      post 'users/create', to: 'users#create'
    end
  end
  #config/routes.rb
  post 'authenticate', to: 'authentication#authenticate'
  get 'hello', to: 'hello#my_action'
  
  resources :genders
  resources :sports
  resources :approval_types
  resources :group_types
  resources :roles
  resources :skill_levels
  resources :users do
    resources :groups
  end
  resources :user_sports
  resources :memberships
  
end
