class TaxisController < ApplicationController

  respond_to :html, :json

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
    #puts params[:begin_time][:'begin_time(4i)']
    #puts params[:begin_time][:'begin_time(5i)']

    taxi_form = TaxiForm.new(params)
    t = TaxiSearch.new(pick_up_location: taxi_form.pick_up_location, passengers: taxi_form.passengers)
    @taxis_results = t.search


  end
end
