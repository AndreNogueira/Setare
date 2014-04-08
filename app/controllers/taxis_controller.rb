class TaxisController < ApplicationController
  def index
    @countries = Country.taxis
  end

  def city
    @cities = City.taxis(params[:id])
    respond_to do |format|
      format.json { render :json => @cities}
    end
  end
end
