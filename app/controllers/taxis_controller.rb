class TaxisController < ApplicationController

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
    @form = TaxiLocations.new(params)
    t = TaxiSearch.new(pick_up_location: params[:pick_up_location], drop_off_location: params[:drop_off_location], passengers: params[:passengers])
    @taxis_results = t.search
  end
end
