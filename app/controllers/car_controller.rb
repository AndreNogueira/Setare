class CarController < ApplicationController
  
  def index
    @countries = Country.with_subsidiaries
  end

  def pick_city
    json_respond(City.with_subsidiaries(params[:id]))
  end

  def pick_subsidiary
    json_respond(Subsidiary.where(city_id: params[:id]))
  end

  def drop_city
    json_respond(City.cities_with_same_agency(params[:country_id],params[:agency_id]))
  end

  def drop_subsidiary
    @d_subs = Subsidiary.drop_subsidiaries(params[:city_id], params[:agency_id])
    json_respond(@d_subs)
  end

  def get_agency
    agency = Agency.joins(:subsidiaries).where(subsidiaries: {id: params[:id]})
    json_respond(agency)
  end

  def search_results
    session[:service_params] = params
    if params[:return_at_same_location]
      session[:service_params]["drop_city"] = params[:pick_city]
      session[:service_params]["drop_subsidiary"] = params[:pick_subsidiary]
    end
    @locations = CarLocations.new(session[:service_params])
    search = CarSearch.new(session[:service_params])
    @list_selected_subsidiary = search.list_selected_subsidiary
    @other_agencies_list = search.other_agencies_list
  end

  def service_extras
    session[:service_params]["car_id"] = params[:car_id]
    @locations = CarLocations.new(session[:service_params])
  end

  def service_reservation
    car_reservation = CarReservation.new(user: current_user,
                                     service_params:session[:service_params],
                                     payment_params:params)
    results = car_reservation.reservation
    if results[:service]
      flash[:success] = results[:message]
      redirect_to root_path
    else
      flash.now[:warning] = results[:message]
      render 'car/service_payment'
    end
  end

  def service_payment
    if !params.nil?
      @car_extras = CarExtras.new(params,session[:service_params])
      session[:service_params]["final_price"] = @car_extras.total_price
      session[:service_params]["extras"] = @car_extras.extras
      session[:service_params]["extras_price"] = @car_extras.extras_price
    end
  end

  private
  def json_respond(parameter)
    respond_to do |format|
      format.json { render :json => parameter}
    end
  end
end
