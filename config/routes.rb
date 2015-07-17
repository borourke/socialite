Rails.application.routes.draw do
  # All feature pages need to be loaded in with a group ID in the beginning.
  # The group ID determines what filter to apply to the corresponding feature model.

  #
  # GROUPS
  #
  get 'groups/new', to: 'groups#new', as: 'new_group'
  get 'groups/invite_member', to: 'groups#invite_member', as: 'invite_member_to_group'
end
