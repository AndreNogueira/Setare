class PickUpLocation < ActiveRecord::Base

  belongs_to :city
  has_and_belongs_to_many :drop_off_locations
  has_and_belongs_to_many :taxis
end
