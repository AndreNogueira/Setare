require 'new_relic/agent/method_tracer'

class TaxiLocations
  include ActiveAttr::Model
  include ::NewRelic::Agent::MethodTracer

  attribute :country, type: Integer
  attribute :city, type: Integer
  attribute :pick_up_location, type: Integer

  attr_reader :countries, :cities, :pick_ups, :drop_offs

  def initialize(attributes)
    super
    @countries = Country.taxis
    @cities = City.taxis(country)
    @pick_ups = PickUpLocation.all_pick_ups_from_city(city)
    @drop_offs = PickUpLocation.drop_offs_from_pick_up(pick_up_location)
  end
  
  # Methods Tracers
  add_method_tracer :initialize, 'Beans/TaxiLocations'
end