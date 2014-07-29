class SenderMail
  include SuckerPunch::Job
  workers 5

  def perform(service,user)
    if service.is_a?CarService
      car_service_perform(service,user)
    elsif service.is_a?(TaxiService)
      taxi_service_perform(service,user)
    end
  end

  private
  def car_service_perform(car_service,user)
      CarReservationMailer.car_reservation(car_service,user).deliver
  end
  def taxi_service_perform(taxi_service,user)
    TaxiReservationMailer.taxi_reservation(taxi_service,user).deliver
  end
end