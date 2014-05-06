class SenderMail
  include SuckerPunch::Job

  def perform(taxi_service,user)
    TaxiReservationMailer.taxi_reservation(taxi_service,user).deliver
  end
  def car_service_perform(car_service,user)
    CarReservationMailer.car_reservation(car_service,user).deliver
  end
end