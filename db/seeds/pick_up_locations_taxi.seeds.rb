after :taxis, :pick_up_locations do

  taxis = Taxi.all
  locations = PickUpLocation.all.reorder("id asc")

  pickUpLocations = []
  picks_random = []

  taxis.each do |f|
    (0..580).each do
      pick_id = rand(0..6960)
      while picks_random.include?(pick_id)
        pick_id = rand(0..6960)
      end
      pickUpLocations << locations[pick_id]
    end
    puts 'Begin ----   PickUpLocations para o carro '+f.name.to_s
    f.pick_up_locations << pickUpLocations
    puts ' '
    puts 'End   ----   PickUpLocations para o carro '+f.name.to_s
  end

end