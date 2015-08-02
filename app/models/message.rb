class Message < ActiveRecord::Base
  validates :message, presence: true, length: {maximum: 2000}
end