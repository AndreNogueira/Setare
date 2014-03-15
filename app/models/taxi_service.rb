# == Schema Information
#
# Table name: taxi_services
#
#  id              :integer          not null, primary key
#  service_begin   :datetime         not null
#  service_end     :datetime
#  round_trip      :boolean          default(FALSE), not null
#  luggage         :boolean          default(FALSE), not null
#  final_price     :decimal(10, 2)   not null
#  special_request :string(300)
#  user_id         :integer          not null
#  taxi_id         :integer          not null
#  created_at      :datetime
#  updated_at      :datetime
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
  
  # Callbacks
  # Instance Methods

end
