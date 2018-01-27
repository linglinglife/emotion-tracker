class CommentsController < ApplicationController
  
  before_action :check_if_logged_in, except: [:show]
  
  def new
    @comment = Comment.new
    @feeling = Feeling.find params[:feeling_id]
  end

  def create
    comment = Comment.new comment_params
    comment.user = @current_user
    comment.feeling_id = params[:feeling_id]
    if comment.save
      redirect_to comment.feeling
    else 
      flash[:errors] = comment.errors.full_messages
      @comment = comment
      render :new 
    end 
  end

  def edit
    @comment = Comment.find params[:id]
    @feeling = Feeling.find params[:feeling_id]
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
    comment = Comment.find params[:id]
    @comment = comment.destroy comment_params
    redirect_to comment.feeling
  end
  
  private
  def comment_params
      params.require(:comment).permit(:title, :body, :user_id, :feeling_id, :created_at)
  end
  
end
