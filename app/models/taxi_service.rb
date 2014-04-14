# == Schema Information
#
# Table name: taxi_services
#
#  id                :integer          not null, primary key
#  service_begin     :datetime         not null
#  service_end       :datetime
#  round_trip        :boolean          default(FALSE), not null
#  luggage           :boolean          default(FALSE), not null
#  final_price       :decimal(10, 2)   not null
#  special_request   :string(300)
#  user_id           :integer          not null
#  taxi_id           :integer          not null
#  created_at        :datetime
#  updated_at        :datetime
#  country           :string(255)
#  city              :string(255)
#  pick_up_location  :string(255)
#  drop_off_location :string(255)
#
# Indexes
#
#  taxi_services_taxi_id_fk  (taxi_id)
#  taxi_services_user_id_fk  (user_id)
#

class TaxiService < ActiveRecord::Base

  # Associations
  belongs_to :taxi
  belongs_to :user

  # Scopes
  # Class Methods
  # Validations
  validates :service_begin, presence: true
  validates :final_price, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :pick_up_location, presence: true
  validates :drop_off_location, presence: true
  
  # Callbacks
  # Instance Methods

end
