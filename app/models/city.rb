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
# Indexes
#
#  cities_country_id_fk  (country_id)
#

class City < ActiveRecord::Base

  # Associations
  belongs_to :country
  has_many :subsidiaries
  has_many :pick_up_locations

  # Scopes
  default_scope {order('name ASC')}

  # Class Methods
  # Validations
  validates :name, presence: true

  # Callbacks
  # Instance Methods

end
