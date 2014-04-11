class TaxiSearch
  include ActiveAttr::Model

  attribute :pick_up_location, type: Integer
  attribute :drop_off_location, type: Integer
  attribute :passengers, type: Integer

  def search
    pick_up  = get_pick_up_location
    drop_off = get_drop_off_location
    distance = calculate_distance_in_km(pick_up.name, drop_off.name)
    taxis    = pick_up.taxis.where('passengers_number >= ?', passengers)
    create_taxis_response(distance, taxis)
  end

  private
  def create_taxis_response(distance, taxis)
    results = []
    taxis.each { |taxi| results << { taxi: taxi, cost: taxi.price_km * distance } }
    results.sort{|t1, t2| t1[:cost] <=> t2[:cost]}
  end

  def calculate_distance_in_km(pick_up_name, drop_off_name)
    directions = GoogleDirections.new(pick_up_name, drop_off_name)
    (directions.status == 'OK')? directions.distance.to_f / 1000 : 25.0
  end

  def get_pick_up_location
    PickUpLocation.find(pick_up_location)
  end

  def get_drop_off_location
    DropOffLocation.find(drop_off_location)
  end

end