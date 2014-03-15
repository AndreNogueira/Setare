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
  has_and_belongs_to_many :pick_up_locations
end
