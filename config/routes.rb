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
  get 'groups/invite_member', to: 'groups#invite_member', as: 'invite_member_to_group'
end
