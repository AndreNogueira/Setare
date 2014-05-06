# == Schema Information
#
# Table name: car_services
#
#  id                     :integer          not null, primary key
#  service_begin          :datetime         not null
#  service_end            :datetime         not null
#  gps                    :boolean          default(FALSE), not null
#  baby_seat              :boolean          default(FALSE), not null
#  insurance              :boolean          default(FALSE), not null
#  additional_driver      :boolean          default(FALSE), not null
#  final_price            :decimal(10, 2)   not null
#  car_id                 :integer          not null
#  user_id                :integer          not null
#  pick_up_subsidiary_id  :integer          not null
#  drop_off_subsidiary_id :integer          not null
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  car_services_car_id_fk                  (car_id)
#  car_services_drop_off_subsidiary_id_fk  (drop_off_subsidiary_id)
#  car_services_pick_up_subsidiary_id_fk   (pick_up_subsidiary_id)
#  car_services_user_id_fk                 (user_id)
#

class CarService < ActiveRecord::Base

  # Associations
  belongs_to :car
  belongs_to :user
  belongs_to :pick_up_location, class_name:'Subsidiary', foreign_key: 'pick_up_subsidiary_id'
  belongs_to :drop_off_location, class_name:'Subsidiary', foreign_key: 'drop_off_subsidiary_id'

  # Scopes
  # Class Methods
  def self.services car_id
    where(car_id:car_id).where('car_services.service_end > ?',Date.current)
  end
  # Validations
  validates :service_begin, presence: true
  validates :service_end, presence: true
  validates :final_price, presence: true

  # Callbacks
  # Instance Methods

end
