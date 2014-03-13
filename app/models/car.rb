class Car < ActiveRecord::Base


  belongs_to :category
  belongs_to :agency
  has_many :car_services

end
