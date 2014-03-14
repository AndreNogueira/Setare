class City < ActiveRecord::Base

  belongs_to :country
  has_many :subsidiaries
  has_many :pick_up_locations
end
