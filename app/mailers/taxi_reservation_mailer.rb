class TaxiReservationMailer < ActionMailer::Base

  helper ActionView::Helpers::NumberHelper

  def taxi_reservation(taxi_service, user)
    @user        = user
    @reservation = taxi_service
    mail(to: user.email, from: 'noreply.setare@gmail.com', subject: "[Setare]: Taxi Reservation nº #{taxi_service.id}")
  end
end
