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
    
    # if params[:file].present?
    #   req = Cloudinary::Uploader.upload(params[:file])
    #   user.image = req["public_id"]
    # end
    
    #   user.save
    #   redirect_to user
      
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    User.update user_params
    redirect_to user
  end

  def show
    @user = User.find params[:id]
    # @user.feelings
  end

  def destroy
    User.destroy params[:id]
    redirect_to root_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end 
  
end
