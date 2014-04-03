after :taxis, :pick_up_locations do

  taxis     = Taxi.all
  locations = PickUpLocation.all.reorder("id asc")


  taxis.each do |f|
    puts 'Begin ----   PickUpLocations para o carro '+f.name.to_s
    ActiveRecord::Base.transaction do
      pickUpLocations = []
      picks_random    = []
      (0..580).each do
        pick_id = rand(0..6960)
        while picks_random.include?(pick_id)
          pick_id = rand(0..6960)
        end
        pickUpLocations << locations[pick_id]
      end

      f.pick_up_locations << pickUpLocations
      puts 'End   ----   PickUpLocations para o carro '+f.name.to_s + '\n'
    end
  end

end