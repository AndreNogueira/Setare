class TaxiReservation
  include ActiveAttr::Model

  attribute :user
  attribute :taxi
  attribute :taxi_form
  attribute :extra_params

  validates :user, presence: true
  validates :taxi, presence: true
  validates :taxi_form, presence: true
  validates :extra_params, presence: true


  def create_taxi_service
    taxi_service                   = TaxiService.new
    taxi_service.country           = taxi_form.country_name
    taxi_service.city              = taxi_form.city_name
    taxi_service.pick_up_location  = taxi_form.pick_up_location_name
    taxi_service.drop_off_location = taxi_form.drop_off_location_name
    taxi_service.taxi              = get_taxi
    taxi_service.final_price       = final_price
    taxi_service.luggage           = luggage
    taxi_service.round_trip        = taxi_form.type_trip
    taxi_service.service_begin     = service_begin
    taxi_service.service_end       = (taxi_service.round_trip) ? service_end : nil
    taxi_service.special_request   = special_request
    taxi_service.user              = user
    taxi_service.save!
  end

  private
  def final_price
    taxi[:cost].to_f
  end

  def luggage
    extra_params[:luggage] == 'true'
  end

  def get_taxi
    Taxi.find(taxi[:taxi])
  end

  def special_request
    extra_params[:special_request]
  end

  def service_begin
    taxi_form.begin_datetime
  end

  def service_end
    taxi_form.end_datetime
  end
end