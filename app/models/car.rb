# == Schema Information
#
# Table name: cars
#
#  id                 :integer          not null, primary key
#  image              :string(255)      not null
#  brand              :string(255)      not null
#  model              :string(255)      not null
#  year               :integer          not null
#  ac                 :boolean          default(FALSE), not null
#  abs                :boolean          default(FALSE), not null
#  transmission       :boolean          default(FALSE), not null
#  doors_number       :integer          not null
#  capacity           :integer          default(2), not null
#  price              :decimal(10, 2)   not null
#  is_available       :boolean          default(TRUE), not null
#  current_subsidiary :integer          not null
#  agency_id          :integer          not null
#  category_id        :integer          not null
#  created_at         :datetime
#  updated_at         :datetime
#  fuel_type          :string(255)      default("diesel"), not null
#  fuel_consumption   :integer          default(0), not null
#
# Indexes
#
#  cars_agency_id_fk    (agency_id)
#  cars_category_id_fk  (category_id)
#
class Car < ActiveRecord::Base

  # Associations
  belongs_to :category
  belongs_to :agency
  has_many :car_services

  # Scopes
  # Class Methods
  def self.current_subsidiary current_subsidiary
    where(current_subsidiary: current_subsidiary,is_available: true).includes(:agency, :category)
  end
  def self.check_available_cars current_subsidiary, pick_date, drop_date
    pdate = Date.parse(pick_date)
    ddate = Date.parse(drop_date)
    now = Date.current
    car_list = Car.current_subsidiary(current_subsidiary)
    car_list.each_with_index do |c,i|
      services = CarService.services(c)
      services.each do |s|
        unless((pdate >= now && ddate > now) && ((pdate > s.service_end && ddate > s.service_end) ||
                    (pdate < s.service_begin && ddate < s.service_begin-1.day)))
          car_list.delete_at(i)
        end
      end
    end
    car_list
  end
  # Validations
  validates :image, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true, inclusion: 1920..2100
  validates :doors_number, presence: true, inclusion: 2..6
  validates :capacity, presence: true, inclusion: 2..60
  validates :price, presence: true

  # Callbacks
  # Instance Methods
  
end
