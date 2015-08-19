Rails.application.routes.draw do
  root to: "messages#index"

  #
  # DEVISE
  #
  devise_for :users, controllers: { 
    sessions: "users/sessions",
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    registrations: "users/registrations",
    unlocks: "users/unlocks"
  }

  #
  # GROUPS
  #
  get 'groups/new', to: 'groups#new', as: 'new_group'
  post 'groups/create', to: 'groups#create', as: 'create_new_group'
  get 'groups/invite_member', to: 'groups#invite_member', as: 'invite_member_to_group'

  #
  # MESSAGES
  #
  post 'messages/create', to: 'messages#create', as: 'new_message'
  get 'messages/index', to: 'messages#index', as: 'messages'

  #
  # TOPICS
  #
  post 'topics/create', to: 'topics#create', as: 'new_topic'
end
