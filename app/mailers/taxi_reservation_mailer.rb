class TaxiReservationMailer < ActionMailer::Base

  helper ActionView::Helpers::NumberHelper

  def taxi_reservation(taxi_service, user)
    @user        = user
    @reservation = taxi_service
    #attachments['setare-logo.png'] = File.read("#{Rails.root}/app/assets/images/setare-logo.png")
    mail(to:      'andre.nogueira26@gmail.com', from: 'noreply.setare@gmail.com',
         subject: "[Setare]: Taxi Reservation nº #{taxi_service.id}")
  end
end
