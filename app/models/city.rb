class City < ActiveRecord::Base

  belongs_to :country
  has_many :subsidiaries
end
