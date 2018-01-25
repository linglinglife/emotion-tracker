class CommentsController < ApplicationController
  
  before_action :check_if_logged_in, except: [:show]
  
  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.new comment_params
  
  end

  def edit
    @comment = Comment.find params[:comment_id]
  end

  def update
    comment = Comment.find params[:comment_id]
    Comment.update comment_params
    redirect_to @current_user
  end

  def show
  end

  def destroy
    Comment.destroy params[:id]
    redirect_to @current_user
  end
  
  private
  def comment_params
      params.require(:comment).permit(:title, :body, :user_id, :feeling_id, :created_at)
  end
  
end
