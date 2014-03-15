# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Country < ActiveRecord::Base

  # Associations
  has_many :cities

  # Scopes
  # Class Methods
  # Validations
  # Callbacks
  # Instance Methods

end
