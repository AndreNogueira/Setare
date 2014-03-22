# == Schema Information
#
# Table name: drop_off_locations
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class DropOffLocation < ActiveRecord::Base

  # Associations
  has_and_belongs_to_many :pick_up_locations

  # Scopes
  default_scope {order('name ASC')}

  # Class Methods
  # Validations
  validates :name, presence: true

  # Callbacks
  # Instance Methods

end
