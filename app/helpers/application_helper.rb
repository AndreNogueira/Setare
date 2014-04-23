module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def flash_class(level)
    case level
      when :info then
        'alert-box info'
      when :success then
        'alert-box success'
      when :warning then
        'alert-box warning'
      else
        'alert-box'
    end
  end
end
