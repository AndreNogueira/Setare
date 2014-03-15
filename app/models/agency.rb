# == Schema Information
#
# Table name: agencies
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  image      :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Agency < ActiveRecord::Base

  has_many :cars
  has_many :subsidiaries
end
