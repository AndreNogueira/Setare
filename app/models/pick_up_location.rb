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

class PickUpLocation < ActiveRecord::Base

  belongs_to :city
  has_and_belongs_to_many :drop_off_locations
  has_and_belongs_to_many :taxis
end
