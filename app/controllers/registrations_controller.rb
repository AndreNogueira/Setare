class RegistrationsController < Devise::RegistrationsController

  def create
    super
  end

  def update
    new_params = params.require(:user).permit(:current_password,
                                              :password,
                                              :password_confirmation)
    change_password = true
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)

      new_params = params.require(:user).permit(:email, :address, :nif, :bi, :driver_license, :name, :phone_number)
      change_password = false
    end
    @user = User.find(current_user.id)
    is_valid = false
    if change_password
      is_valid = @user.update_with_password(new_params)
    else
      @user.update_without_password(new_params)
    end
    if is_valid
      set_flash_message :notice, :updated
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      if change_password
        render "edit_password"
      else
        render "edit"
      end
    end
  end

  def edit_password
    @user = User.find(current_user.id)
    render "edit_password"
  end
end
