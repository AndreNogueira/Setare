class RegistrationsController < Devise::RegistrationsController

  def update
    @user = User.find(current_user.id)
    successfully_updated = verify_current_password(@user,params)

    if successfully_updated[:request]
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to edit_user_registration_path
    else
      if successfully_updated[:password]
        render 'edit_password'
      else
        render 'edit'
      end

    end
  end

  def edit_password
    @user = User.find(current_user.id)
    render 'edit_password'
  end

  private
  def verify_current_password(user, params)
    if params[:user][:password].present?
      user.update_with_password(devise_parameter_sanitizer.sanitize(:account_update))
      {password:true, request: true}
    else
      # remove the virtual current_password attribute because update_without_password doesn't know how to ignore it
      params[:user].delete(:current_password)
      user.update_without_password(devise_parameter_sanitizer.sanitize(:account_update))
      {password: false, request: true}
    end
  end
end
