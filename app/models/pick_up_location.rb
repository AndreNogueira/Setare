# == Schema Information
#
# Table name: pick_up_locations
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  city_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  pick_up_locations_city_id_fk  (city_id)
#

class PickUpLocation < ActiveRecord::Base

  # Associations
  belongs_to :city
  has_and_belongs_to_many :drop_off_locations
  has_and_belongs_to_many :taxis

  # Scopes
  default_scope {order('name ASC')}
  scope :all_pick_ups_from_city, ->(city_id){where(city_id: city_id)}
  scope :drop_offs_from_pick_up, ->(pick_up_id) {find(pick_up_id).drop_off_locations}

  # Class Methods
  # Validations
  validates :name, presence: true

  # Callbacks
  # Instance Methods

end
