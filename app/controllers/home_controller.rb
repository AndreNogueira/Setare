class HomeController < ApplicationController

  before_filter :authenticate_user!, only: [:reservations,:car_reservations]

  def index
  end

  def reservations
    @taxis = current_user.taxi_services
    @cars = current_user.car_services.includes(:car)
  end
end
