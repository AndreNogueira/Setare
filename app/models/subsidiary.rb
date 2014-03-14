class Subsidiary < ActiveRecord::Base

  belongs_to :city
  belongs_to :agency

  has_many :pick_up_services, class_name: 'CarService', foreign_key: :pick_up_subsidiary_id
  has_many :drop_off_services, class_name: 'CarService', foreign_key: :drop_off_subsidiary_id

end
