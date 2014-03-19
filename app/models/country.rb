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
  default_scope {order('name ASC')}
  scope :taxis, -> {joins(:cities).where('cities.is_taxi = ?',true).distinct}
  
  # Class Methods
  # Validations
  validates :name, presence: true

  # Callbacks
  # Instance Methods

end
