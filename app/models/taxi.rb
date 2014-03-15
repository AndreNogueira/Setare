# == Schema Information
#
# Table name: taxis
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  image             :string(255)      not null
#  passengers_number :integer          not null
#  luggage           :integer          not null
#  price_km          :decimal(10, 2)   not null
#  created_at        :datetime
#  updated_at        :datetime
#

class Taxi < ActiveRecord::Base

  # Associations
  has_and_belongs_to_many :pick_up_locations
  has_many :taxi_services

  # Scopes
  # Class Methods
  # Validations
  # Callbacks
  # Instance Methods

end
