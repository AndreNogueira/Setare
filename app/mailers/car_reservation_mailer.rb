class CarReservationMailer < ActionMailer::Base

  helper ActionView::Helpers::NumberHelper

  def car_reservation(car_service, user)
    @user        = user
    @reservation = car_service
    mail(to: user.email, from: 'noreply.setare@gmail.com', subject: "[Setare]: Car Reservation nº #{car_service.id}")
  end
end