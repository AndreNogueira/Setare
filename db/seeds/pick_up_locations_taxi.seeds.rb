after :taxis, :pick_up_locations do
  puts '--------- Begin of PickUpLocations for Taxis --------------'

  taxis     = Taxi.all
  locations = PickUpLocation.all

  Taxi.transaction do
    taxis.each do |taxi|
      puts 'Taxi '+ taxi.name.to_s
      taxi.pick_up_locations << locations.sample(600)
    end
  end

  puts '--------- End of PickUpLocations for Taxis --------------'
end