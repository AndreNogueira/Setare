class CarSearch
  include ActiveAttr::Model

  attribute :pick_subsidiary
  attribute :begin_date
  attribute :end_date
  attribute :pick_city
  attribute :drop_city

  attr_reader :locations, :list_selected_subsidiary, :other_agencies_list

  def initialize(attributes)
    super
    #list of all Available cars in the choosen subsidiary
    @list_selected_subsidiary = cars_list
    @other_agencies_list = other_cars_list
  end

  private
  def remaining_subsidiaries
    Subsidiary.other_subsidiaries(pick_city,drop_city,pick_subsidiary)
  end

  def other_cars_list
    #list of all Available cars in others subsidiaries from the same cities
    other_agencies_list = []
    remaining_subsidiaries.each do |f|
      other_agencies_list << Car.check_available_cars(f,begin_date,end_date)
    end
    other_agencies_list
  end

  def cars_list
    Car.check_available_cars(pick_subsidiary,begin_date,end_date)
  end
end