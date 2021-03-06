after :cities, :agencies do
  puts '--------- Begin of Subsidiaries Seeds File ---------'
  subsidiaries = []
  cities = City.all
  agencies = Agency.all.reorder('id asc')

  agencies.each do |agency|
    puts agency.name + ' Subsidiaries'
    cities.sample(600).each do |city|
      subsidiaries << Subsidiary.new(name: agency.name+' Station - '+city.name, address:'Street of '+ city.name, city:city, agency:agency)
    end
  end

  Subsidiary.import subsidiaries
  puts '--------- End of Subsidiaries Seeds File ---------'
end