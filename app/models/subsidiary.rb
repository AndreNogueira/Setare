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
# Indexes
#
#  subsidiaries_agency_id_fk  (agency_id)
#  subsidiaries_city_id_fk    (city_id)
#

class Subsidiary < ActiveRecord::Base

  # Associations
  belongs_to :city
  belongs_to :agency
  has_many :pick_up_services, class_name: 'CarService', foreign_key: :pick_up_subsidiary_id
  has_many :drop_off_services, class_name: 'CarService', foreign_key: :drop_off_subsidiary_id

  # Scopes
  # Class Methods
  def self.other_subsidiaries pick_city, drop_city, pick_subsidiary
    pick = Subsidiary.joins(:city).where(cities: {id: pick_city})
    drop = Subsidiary.joins(:city).where(cities: {id: drop_city})
    agency_id = Subsidiary.find(pick_subsidiary).agency_id
    #get the remaining existing subsidiaries from same agency at pick city and drop
    other_subs = []
    pick.each do |p|
      drop.each do |d|
        if (p.agency_id. == d.agency_id) && (p.agency_id != agency_id)
          other_subs << p.id
        end
      end
    end
    other_subs
  end

  def self.drop_subsidiaries drop_city_id, agency_id
    joins(:city).where(cities: {id: drop_city_id}, agency_id: agency_id)
  end
  # Validations
  validates :name, presence: true
  validates :address, presence: true
  # Callbacks
  # Instance Methods

end
