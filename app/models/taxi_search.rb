class TaxiSearch
  include ActiveAttr::Model


  attribute :pick_up_location, type: Integer
  attribute :drop_off_location, type: Integer
  attribute :passengers, type: Integer

  def search
    get_pick_up_location.taxis.where('passengers_number >= ?', passengers)
  end


  private
  def get_pick_up_location
    PickUpLocation.find(pick_up_location)
  end

  def get_drop_off_location
    DropOffLocation.find(drop_off_location)
  end

end