class TaxiForm
  include ActiveAttr::Model

  attribute :country, type: Integer
  attribute :city, type: Integer
  attribute :pick_up_location, type: Integer
  attribute :drop_off_location, type: Integer
  attribute :passengers, type: Integer
  attribute :type_trip, type: Boolean
  attribute :begin_date
  attribute :begin_time
  attribute :end_date
  attribute :end_time


end