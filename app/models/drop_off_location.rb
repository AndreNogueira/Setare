class DropOffLocation < ActiveRecord::Base
  has_and_belongs_to_many :pick_up_locations
end
