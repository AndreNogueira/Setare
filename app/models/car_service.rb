class CarService < ActiveRecord::Base

  belongs_to :car
  belongs_to :user

  belongs_to :pick_up_location, class_name:'Subsidiary', foreign_key: 'pick_up_subsidiary_id'
  belongs_to :drop_off_location, class_name:'Subsidiary', foreign_key: 'drop_off_subsidiary_id'


end
