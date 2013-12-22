class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index

  end
  def comments
  	c = Comment.all
  	render json: c
  end
  def update
  	comment = Comment.create(author: params[:author], content: params[:content])
  	c = Comment.all
  	render json: c
  end
end
