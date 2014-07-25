require 'new_relic/agent/method_tracer'

class CarLocations
  include ActiveAttr::Model
  include ::NewRelic::Agent::MethodTracer

  attribute :pick_country, type: Integer
  attribute :pick_city, type: Integer
  attribute :pick_subsidiary,type: Integer
  attribute :drop_city,type: Integer

  attr_reader :countries,:pick_cities,:pick_subs,:drop_cities,:drop_subs

  def initialize(attributes)
    super
    @countries = Country.with_subsidiaries
    @pick_cities = City.with_subsidiaries(pick_country)
    @pick_subs = Subsidiary.where(city_id: pick_city)
    @drop_cities = City.cities_with_same_agency(pick_country, Subsidiary.find(pick_subsidiary).agency.id)
    @drop_subs = Subsidiary.drop_subsidiaries(check_params,Subsidiary.find(pick_subsidiary).agency.id)
  end

  private
  def check_params
    if drop_city == 0
      drop_city = pick_city
    else
      drop_city
    end
  end

  #Methods Tracers
  add_method_tracer :initialize, 'Beans/CarLocations/initialize'
end
