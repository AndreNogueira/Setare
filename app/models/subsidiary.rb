class Subsidiary < ActiveRecord::Base

  belongs_to :city
  belongs_to :agency
end
