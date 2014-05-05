class TaxiForm
  include ActiveAttr::Model

  attribute :country
  attribute :city
  attribute :pick_up_location
  attribute :drop_off_location
  attribute :passengers, type: Integer
  attribute :type_trip, type: Boolean
  attribute :begin_date
  attribute :begin_time
  attribute :end_date
  attribute :end_time

  validates :country, presence: true
  validates :city, presence: true
  validates :pick_up_location, presence: true
  validates :drop_off_location, presence: true
  validates :passengers, presence: true


  def begin_datetime
    date = begin_date.dup.concat(" #{begin_time[:hour]}:#{begin_time[:minute]}")
    DateTime.strptime(date, '%d/%m/%Y %H:%M')
  end

  def end_datetime
    unless end_time[:hour].empty? && end_time[:minute].empty?
      puts end_time[:hour]
      date = end_date.dup.concat(" #{end_time[:hour]}:#{end_time[:minute]}")
      DateTime.strptime(date, '%d/%m/%Y %H:%M')
    end
  end

  def city_name
    City.find(city).name
  end

  def country_name
    Country.find(country).name
  end

  def pick_up_location_name
    PickUpLocation.find(pick_up_location).name
  end

  def drop_off_location_name
    DropOffLocation.find(drop_off_location).name
  end
end