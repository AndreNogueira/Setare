class Taxi < ActiveRecord::Base
  has_and_belongs_to_many :pick_up_locations
  has_many :taxi_services
end
