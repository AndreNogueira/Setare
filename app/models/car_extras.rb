class CarExtras
  include ActiveAttr::Model
  include ::NewRelic::Agent::MethodTracer

  attribute :additional_driver_quantity, type: Integer
  attribute :gps_quantity, type: Integer
  attribute :baby_seat_quantity, type: Integer

  attr_reader :extras_price, :total_price, :extras

  validates :additional_driver_quantity, presence: true
  validates :gps_quantity, presence: true
  validates :baby_seat_quantity, presence: true

  def initialize(attributes,service_params)
    super
    @extras_price = calc_extras_price
    @total_price = calc_extras_price + calc_rent_price(service_params["car_id"],service_params["end_date"],service_params["begin_date"])
    @extras = check_extras
  end


  private
  def calc_rent_price car_id, end_date, begin_date
    car_price = Car.find(car_id).price
    total_days = (Date.parse(end_date) - Date.parse(begin_date)).to_i
    if total_days == 0
      total_days = 1
    end
    rent_price = total_days * car_price
  end

  def calc_extras_price
    #hardcoded price extras
    extras_price = 0
    if additional_driver_quantity > 0
      extras_price+= 6.15 * additional_driver_quantity
    end
    if gps_quantity > 0
      extras_price+= 8.61 * gps_quantity
    end
    if baby_seat_quantity > 0
      extras_price+= 10.46 * baby_seat_quantity
    end
    extras_price
  end

  def check_extras
    extras = {"gps"=>0,"baby_seat"=>0,"additional_driver"=>0}
    if additional_driver_quantity > 0
      extras["additional_driver"] = 1
    elsif gps_quantity > 0
      extras["gps"] = 1
    elsif baby_seat_quantity > 0
      extras["baby_seat"] = 1
    end
    extras
  end
  # Methods Tracers
  add_method_tracer :initialize, 'BussinessLogic/CarExtras'
end
