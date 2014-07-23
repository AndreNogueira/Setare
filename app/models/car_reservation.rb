class CarReservation
  include ActiveAttr::Model
  include ::NewRelic::Agent::MethodTracer

  attribute :user
  attribute :service_params
  attribute :payment_params

  validates :user, presence: true
  validates :service_params, presence: true
  validates :payment_params, presence: true

  def reservation
    card_validation = PaymentCard.new(payment_params)
    card_validation.payment_validation(user) do
      create_car_service
    end
  end


  private
  def create_car_service
    ActiveRecord::Base.transaction do
      car_service
    end
  end

  def car_service
    car_service = CarService.new
    car_service.service_begin = get_begin_date
    car_service.service_end = get_end_date
    car_service.gps = service_params[:extras][:gps]
    car_service.baby_seat = service_params[:extras][:baby_seat]
    car_service.insurance = false
    car_service.additional_driver = service_params[:extras][:additional_driver]
    car_service.final_price = service_params[:final_price]
    car_service.car = get_car
    car_service.user = user
    car_service.pick_up_subsidiary_id = service_params[:pick_subsidiary]
    car_service.drop_off_subsidiary_id = service_params[:drop_subsidiary]
    (car_service.save) ? car_service : nil
  end
  def concat_date_time date, time
    service_begin_datetime = (date+' '+time).to_datetime
  end
  def get_car
    Car.find(service_params[:car_id])
  end
  def get_begin_date
    concat_date_time(service_params[:begin_date],service_params[:timepicker_begin])
  end
  def get_end_date
    concat_date_time(service_params[:end_date],service_params[:timepicker_end])
  end

  # Methods Tracers
  add_method_tracer :reservation, 'BussinessLogic/CarReservation'
end