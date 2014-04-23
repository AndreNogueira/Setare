class TaxisController < ApplicationController

  before_filter :authenticate_user!

  respond_to :html, :json, :js

  def index
    respond_with(@countries = Country.taxis)
  end

  def city
    respond_with(City.taxis(params[:id]))
  end

  def pick_up
    respond_with(PickUpLocation.all_pick_ups_from_city(params[:id]))
  end

  def drop_off
    respond_with(PickUpLocation.drop_offs_from_pick_up(params[:id]))
  end

  def search_results
    session[:taxi_form] = TaxiForm.new(params)
    @form               = TaxiLocations.new(params)
    t                   = TaxiSearch.new(pick_up_location: params[:pick_up_location], drop_off_location: params[:drop_off_location], passengers: params[:passengers])
    @taxis_results      = t.search(session[:taxi_form].type_trip)
  end

  def taxi_selected
    session[:taxi_info] = { taxi: params[:id], cost: params[:cost] }
    @form               = TaxiLocations.new(session[:taxi_form].attributes)
  end

  def taxi_reservation
    taxi_reserve = TaxiReservation.new(taxi_form: session[:taxi_form], taxi: session[:taxi_info], extra_params: params, user: current_user)
    results      = taxi_reserve.reservation

    if results[:service]
      flash[:success] = results[:message]
      redirect_to root_path
    else
      @form = TaxiLocations.new(session[:taxi_form].attributes)
      flash.now[:warning] = results[:message]
      render 'taxis/taxi_selected'
    end
  end
end
