class TaxisController < ApplicationController
  def index
    @countries = Country.taxis
  end

  def city
    cities = City.taxis(params[:id])
    respond_to do |format|
      format.json { render :json => cities}
    end
  end

  def pick_up
    pick_ups = PickUpLocation.all_pick_ups_from_city(params[:id])
    respond_to do |format|
      format.json { render :json => pick_ups}
    end
  end

  def drop_off
    drop_offs = PickUpLocation.drop_offs_from_pick_up(params[:id])
    respond_to do |format|
      format.json { render :json => drop_offs}
    end
  end

  def search_results
    #puts params[:begin_time][:'begin_time(4i)']
    #puts params[:begin_time][:'begin_time(5i)']

    taxi_form = TaxiForm.new(params)
    t = TaxiSearch.new(pick_up_location: taxi_form.pick_up_location, passengers: taxi_form.passengers)
    @taxis_results = t.search


  end
end
