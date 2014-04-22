class SenderMail
  include SuckerPunch::Job

  def perform
    TaxiReservationMailer.taxi_reservation(nil,nil).deliver
  end
end