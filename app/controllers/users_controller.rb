class UsersController < ApplicationController
  
  def new
    
    @user = User.new
    
  end

  def create
    
    user = User.create user_params
    if user.persisted? 
    #did this thing get saved? is the user present now?
    session[:user_id] = user.id
      redirect_to user 
      #will take you to the show page
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end
      
  end

  def edit
    
    @user = User.find params[:id]
    
  end

  def update
  end

  def show
  end

  def destroy
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end 
  
end
