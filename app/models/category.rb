# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base

  # Associations
  has_many :cars

  # Scopes
  # Class Methods
  # Validations
  # Callbacks
  # Instance Methods

end
