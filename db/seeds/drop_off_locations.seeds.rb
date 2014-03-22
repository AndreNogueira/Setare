after :pick_up_locations do
  puts '--------- Begin of Drop Off Locations Seeds File ---------'

  puts 'Pick Up Locations for Funchal'
  funchal_pick_up = City.find_by(name: 'Funchal').pick_up_locations.reorder('id asc')
  ['Funchal City Centre', 'Santa Cruz Funchal', 'Machico', 'Canico', 'Ribeira Brava', 'Calheta', 'Boaventura', 'Calheta',
   'Camara de Lobos', 'Canico', 'Choupana Hills Resort', 'Encumeada', 'Funchal City Centre', 'Jardim da Serra', 'Machico',
   'Ponta Delgada', 'Ponta do Pargo', 'Ponta do Sol', 'Porto Moniz', 'Porto da Cruz', 'Ribeira Brava', 'Santa Cruz Funchal',
   'Santana', 'Santo da Serra', 'Sao Jorge', 'Sao Vicente'].each do |drop_off|
    DropOffLocation.find_or_create_by(name: drop_off) do |dol|
      dol.pick_up_locations << funchal_pick_up[0]
    end
  end

  madeira = funchal_pick_up.shift
  DropOffLocation.find_or_create_by(name: madeira.name) do |d|
    d.pick_up_locations = funchal_pick_up
  end


  puts '--------- End of Drop Off Locations Seeds File -----------'
end