# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  is_taxi    :boolean          default(FALSE), not null
#  country_id :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class City < ActiveRecord::Base

  # Associations
  belongs_to :country
  has_many :subsidiaries
  has_many :pick_up_locations

  # Scopes
  # Class Methods
  # Validations
  # Callbacks
  # Instance Methods

end
