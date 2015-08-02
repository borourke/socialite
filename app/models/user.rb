class User < ActiveRecord::Base
  has_many :group_member
  has_many :messages

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
