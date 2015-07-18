class MessagesController < ApplicationController
  before_action :authenticate_user!
  
  expose(:testing) { "This is a test" }
  
  def index
    # load all threads and messages for preferred group id, unless custom group id is defined
  end
end