class FeelingsController < ApplicationController
  
  before_action :check_if_logged_in, except: [:show]
  
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

  def show
  end

  def update
  end

  def destroy
  end
  
  private
  def feeling_params
      params.require(:feeling).permit(:description, :title, :scale)
  end
end
