after :cities, :agencies do

  puts 'begin ------ Alamo subsidiaries ---------'
  alamo_random = []
  alamo_subsidiaries = []
  (1..60).each do
    city_id = rand(1..166)
    while alamo_random.include?(city_id)
      city_id = rand(1..166)
    end
    alamo_random << city_id
    city = City.find(city_id)
    alamo_subsidiaries << Subsidiary.new(name: city.name.to_s + ' Station', address:'Street of '+city.name,city:city, agency:Agency.find(1))
  end
  puts 'end ------ Alamo subsidiaries ---------'

  puts 'begin ------ avis subsidiaries ---------'
  avis_random = []
  avis_subsidiaries = []
  (1..60).each do
    city_id = rand(1..166)
    while avis_random.include?(city_id)
      city_id = rand(1..166)
    end
    avis_random << city_id
    city = City.find(city_id)
    avis_subsidiaries << Subsidiary.new(name: city.name.to_s + ' Station', address:'Street of '+city.name,city:city, agency:Agency.find(2))
  end
  puts 'end ------ avis subsidiaries ---------'

  puts 'begin ------ budget subsidiaries ---------'
  budget_random = []
  budget_subsidiaries = []
  (1..60).each do
    city_id = rand(1..166)
    while budget_random.include?(city_id)
      city_id = rand(1..166)
    end
    budget_random << city_id
    city = City.find(city_id)
    budget_subsidiaries << Subsidiary.new(name: city.name.to_s + ' Station', address:'Street of '+city.name,city:city, agency:Agency.find(3))
  end
  puts 'end ------ budget subsidiaries ---------'

  puts 'begin ------ dollar subsidiaries ---------'
  dollar_random = []
  dollar_subsidiaries = []
  (1..60).each do
    city_id = rand(1..166)
    while dollar_random.include?(city_id)
      city_id = rand(1..166)
    end
    dollar_random << city_id
    city = City.find(city_id)
    dollar_subsidiaries << Subsidiary.new(name: city.name.to_s + ' Station', address:'Street of '+city.name,city:city, agency:Agency.find(4))
  end
  puts 'end ------ dollar subsidiaries ---------'


  puts 'begin ------ europcar subsidiaries ---------'
  europcar_random = []
  europcar_subsidiaries = []
  (1..60).each do
    city_id = rand(1..166)
    while europcar_random.include?(city_id)
      city_id = rand(1..166)
    end
    europcar_random << city_id
    city = City.find(city_id)
    europcar_subsidiaries << Subsidiary.new(name: city.name.to_s + ' Station', address:'Street of '+city.name,city:city, agency:Agency.find(5))
  end
  puts 'end ------ europcar subsidiaries ---------'


  puts 'begin ------ hertz subsidiaries ---------'
  hertz_random = []
  hertz_subsidiaries = []
  (1..60).each do
    city_id = rand(1..166)
    while hertz_random.include?(city_id)
      city_id = rand(1..166)
    end
    hertz_random << city_id
    city = City.find(city_id)
    hertz_subsidiaries << Subsidiary.new(name: city.name.to_s + ' Station', address:'Street of '+city.name,city:city, agency:Agency.find(6))
  end
  puts 'end ------ hertz subsidiaries ---------'


  puts 'begin ------ national subsidiaries ---------'
  national_random = []
  national_subsidiaries = []
  (1..60).each do
    city_id = rand(1..166)
    while national_random.include?(city_id)
      city_id = rand(1..166)
    end
    national_random << city_id
    city = City.find(city_id)
    national_subsidiaries << Subsidiary.new(name: city.name.to_s + ' Station', address:'Street of '+city.name,city:city, agency:Agency.find(7))
  end
  puts 'end ------ national subsidiaries ---------'

  puts 'begin ------ thrifty subsidiaries ---------'
  thrifty_random = []
  thrifty_subsidiaries = []
  (1..60).each do
    city_id = rand(1..166)
    while thrifty_random.include?(city_id)
      city_id = rand(1..166)
    end
    thrifty_random << city_id
    city = City.find(city_id)
    thrifty_subsidiaries << Subsidiary.new(name: city.name.to_s + ' Station', address:'Street of '+city.name,city:city, agency:Agency.find(8))
  end
  puts 'end ------ thrifty subsidiaries ---------'

  Subsidiary.import alamo_subsidiaries
  Subsidiary.import avis_subsidiaries
  Subsidiary.import budget_subsidiaries
  Subsidiary.import dollar_subsidiaries
  Subsidiary.import europcar_subsidiaries
  Subsidiary.import hertz_subsidiaries
  Subsidiary.import thrifty_subsidiaries
  Subsidiary.import national_subsidiaries
  puts '---- Subsidiaries Seeds Finish'

end