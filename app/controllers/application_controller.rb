class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  def upvote
  @topic = Topic.find(params[:id])
  @topic.votes.create
  redirect_to(topics_path)
end
end
