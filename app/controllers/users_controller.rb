class UsersController < ApplicationController




  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path, notice: I18n.t('views.messages.update_profile')
    else
      render 'edit'
    end
  end

  def show
      @user = User.find(params[:id])

      end


  private

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :icon, :keep_team_id)
  end
end
