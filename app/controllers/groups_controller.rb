class GroupsController < ApplicationController
  expose(:new_group) { Group.new }

  expose(:common_members) { GroupMember.users_in_groups(current_user.id) }

  def new
    # create a new group
  end

  def invite_member
    # add a member to a group
  end
end