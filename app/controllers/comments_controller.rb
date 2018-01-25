class CommentsController < ApplicationController
  
  before_action :check_if_logged_in, except: [:show]
  
  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.new comment_params
    comment.user = @current_user
    if comment.save
      redirect_to @current_user 
    else 
      flash[:errors] = comment.errors.full_messages
      @comment = comment
      render :new 
    end 
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def update
    comment = Comment.find params[:id]
    comment.update comment_params
    redirect_to @current_user
  end

  def show
    @comment = Comment.find params[:id]
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
