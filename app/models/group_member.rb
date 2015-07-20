class GroupMember < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  def self.users_in_groups(user_id)
    groups = where(user_id: user_id).pluck(:group_id)
    users = where(group_id: groups).pluck(:user_id)
    User.where(id: users).order(:name)
  end
end