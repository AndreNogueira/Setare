require 'new_relic/agent/method_tracer'

class TaxiSearch
  include ActiveAttr::Model
  include ::NewRelic::Agent::MethodTracer

  attribute :pick_up_location, type: Integer
  attribute :drop_off_location, type: Integer
  attribute :passengers, type: Integer

  validates :pick_up_location, presence: true
  validates :drop_off_location, presence: true
  validates :passengers, presence: true

  def search(round_trip=true)
    pick_up  = get_pick_up_location
    drop_off = get_drop_off_location
    distance = calculate_distance_in_km(pick_up.name, drop_off.name)
    taxis    = pick_up.taxis.where('passengers_number >= ?', passengers)
    distance *=  2 unless round_trip
    create_taxis_response(distance, taxis)
  end

  private
  def create_taxis_response(distance, taxis)
    results = []
    taxis.each { |taxi| results << { taxi: taxi, cost: taxi.price_km * distance } }
    results.sort { |taxi1, taxi2| taxi1[:cost] <=> taxi2[:cost] }
  end

  def calculate_distance_in_km(pick_up_name, drop_off_name)
    #directions = GoogleDirections.new(pick_up_name, drop_off_name)
    #(directions.status == 'OK')? directions.distance.to_f / 1000 : 25.0
    number = Random.new
    directions = number.rand(25.0..200.0).round(2)
  end

  def get_pick_up_location
    PickUpLocation.find(pick_up_location)
  end

  def get_drop_off_location
    DropOffLocation.find(drop_off_location)
  end

  # Methods Tracers
  add_method_tracer :search, 'BussinessLogic/TaxiSearch/search'
  add_method_tracer :create_taxis_response, 'BussinessLogic/TaxiSearch/create_taxis_response'
  add_method_tracer :calculate_distance_in_km, 'BussinessLogic/TaxiSearch/calculate_distance_in_km'
  add_method_tracer :get_pick_up_location, 'BussinessLogic/TaxiSearch/get_pick_up_location'
  add_method_tracer :get_drop_off_location, 'BussinessLogic/TaxiSearch/get_drop_off_location'

end