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

end