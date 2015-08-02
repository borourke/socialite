class Group < ActiveRecord::Base
  has_many :group_member
  has_many :messages
end