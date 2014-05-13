class CarReservationMailer < ActionMailer::Base

  helper ActionView::Helpers::NumberHelper

  def car_reservation(car_service, user)
    @user        = user
    @reservation = car_service
    @pick_up = {pick_up_sub: Subsidiary.find(car_service.pick_up_subsidiary_id).name,
                pick_up_city: Subsidiary.find(car_service.pick_up_subsidiary_id).city.name}
    @drop_off = {drop_off_sub: Subsidiary.find(car_service.drop_off_subsidiary_id).name,
                 drop_off_city: Subsidiary.find(car_service.drop_off_subsidiary_id).city.name}

    mail(to: user.email, from: 'noreply.setare@gmail.com', subject: "[Setare]: Car Reservation nº #{car_service.id}")
  end
end