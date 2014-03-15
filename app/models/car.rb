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
#

class Car < ActiveRecord::Base

  # Associations
  belongs_to :category
  belongs_to :agency
  has_many :car_services

  # Scopes
  # Class Methods
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
