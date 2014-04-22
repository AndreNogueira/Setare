class TaxiReservationMailer < ActionMailer::Base

  def taxi_reservation(taxi_service, user)


    mail(to: 'andre.nogueira26@gmail.com', from: 'noreply.setare@gmail.com',subject: "[Setare]: Taxi Reservation nº #{taxi_service.id}")
  end
end
