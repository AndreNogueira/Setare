# == Schema Information
#
# Table name: subsidiaries
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  address    :string(255)      not null
#  city_id    :integer          not null
#  agency_id  :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Subsidiary < ActiveRecord::Base

  belongs_to :city
  belongs_to :agency

  has_many :pick_up_services, class_name: 'CarService', foreign_key: :pick_up_subsidiary_id
  has_many :drop_off_services, class_name: 'CarService', foreign_key: :drop_off_subsidiary_id

end
