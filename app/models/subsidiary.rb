class Subsidiary < ActiveRecord::Base

  belongs_to :city
  belongs_to :agency

  has_many :car_services, as: 'pick_up_services'

  has_many :car_services, as: 'drop_off_services'
end
