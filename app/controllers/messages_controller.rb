class MessagesController < ApplicationController
  before_action :authenticate_user!
  
  expose(:testing) { "This is a test" }

  expose(:message) { Message.new }

  expose(:messages) { Message.order("created_at DESC") }
  
  def index
    # load all threads and messages for preferred group id, unless custom group id is defined
  end

  def create
    respond_to do |format|
      @message = Message.create(message_params)
      format.html {redirect_to root_url}
      format.js
    end
  end
 
  private
 
  def message_params
    params.require(:message).permit(:message, :author_id, :group_id)
  end
end