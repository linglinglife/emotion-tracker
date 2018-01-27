class FeelingsController < ApplicationController
  
  before_action :check_if_logged_in, except: [:show]
  
  def index
    @feeling = Feeling.all
  end
  
  def new
    @feeling = Feeling.new
  end

  def create
    feeling = Feeling.new feeling_params
    feeling.user = @current_user
    if feeling.save
      redirect_to @current_user 
    else 
      flash[:errors] = feeling.errors.full_messages
      @feeling = feeling
      render :new 
    end 
  end

  def edit
    @feeling = Feeling.find params[:id]
  end
  
  def update
    feeling = Feeling.find params[:id]
    feeling.update feeling_params
    redirect_to @current_user
  end
    
  def show
    @feeling = Feeling.find params[:id]
    @comment = Comment.new
  end


  def destroy
    Feeling.destroy params[:id]
    redirect_to @current_user
  end
  
  private
  def feeling_params
      params.require(:feeling).permit(:scale, :title, :description, :user_id, :created_at)
  end
end
  