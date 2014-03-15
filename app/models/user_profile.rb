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

  has_many :users
end
