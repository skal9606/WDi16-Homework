class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(user_params)

  respond_to do |format|
    if @user.save
      flash[:success] = "User was successfully created"
      session[:user_id] = @user.id
      # # The line below is the only additional line we need in our Users controller.
      # UserMailer.welcome(@user).deliver_now
      format.html { redirect_to houses_path, notice: 'User was successfully created.' }
      format.json { render :show, status: :created, location: @user }
    else
      flash[:error] = "User was not successfully created"
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end

def edit
  @user = @current_user
end

def update
  user = User.find(params[:id])
  user.update(user_params) #i.e. you can only update the fields that are specified below in user-params

  redirect_to user_path(user)
end

def destroy
  user = User.find(params[:id])
  user.destroy

  redirect_to users_path()
end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :age, :password_confirmation)
  end
end
