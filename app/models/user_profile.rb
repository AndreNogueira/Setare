# == Schema Information
#
# Table name: user_profiles
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class UserProfile < ActiveRecord::Base

  # Associations
  has_many :users

  # Scopes
  # Class Methods
  # Validations
  # Callbacks
  # Instance Methods
end
