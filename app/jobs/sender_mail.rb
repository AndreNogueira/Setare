class SenderMail
  include SuckerPunch::Job

  def perform(taxi_service,user)
    TaxiReservationMailer.taxi_reservation(taxi_service,user).deliver
  end
end