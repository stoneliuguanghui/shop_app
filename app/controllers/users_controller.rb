class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def show
    @user=User.find(params[:id])
  end

  def create
    @user=User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "登入成功"
      redirect_to @user
    else
      render 'new'  
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update_attributes user_params
      flash[:success] = "修改成功"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end



  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
    
  end
end
