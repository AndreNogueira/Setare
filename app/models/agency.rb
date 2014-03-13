class Agency < ActiveRecord::Base

  has_many :cars
  has_many :subsidiaries
end
