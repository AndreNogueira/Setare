after :agencies, :categories, :subsidiaries do
  puts 'puts --------- Begin of Car Seeds File ---------'

  # Categories
  compact  = Category.find(1)
  miniVan  = Category.find(2)
  pickUp   = Category.find(3)
  sport    = Category.find(4)
  economy  = Category.find(5)
  premium  = Category.find(6)
  standard = Category.find(7)

  #New instance of Agency
  a        = Agency.new

  #Add cars to Cars Array
  cars     = []
  cars << Car.new(image: 'bmw_318d', brand: 'BMW', model: '318-D', year: 2012, ac: 1, abs: 1, transmission: 1, doors_number: 5, capacity: 5, price: 43, fuel_type: 'diesel', fuel_consumption: 4.8, is_available: 1, current_subsidiary: 0, agency: a, category: premium)
  cars << Car.new(image: 'bmw_m1_coupe', brand: 'BMW', model: 'M1 Coupe', year: 2013, ac: 1, abs: 1, transmission: 1, doors_number: 2, capacity: 4, price: 25.5, fuel_type: 'gasoline', fuel_consumption: 9.6, is_available: 1, current_subsidiary: 0, agency: a, category: sport)
  cars << Car.new(image: 'citroen_c1', brand: 'CITROEN', model: 'C1', year: 2013, ac: 0, abs: 1, transmission: 1, doors_number: 3, capacity: 4, price: 30, fuel_type: 'diesel', fuel_consumption: 5, is_available: 1, current_subsidiary: 0, agency: a, category: economy)
  cars << Car.new(image: 'citroen_c3', brand: 'CITROEN', model: 'C3', year: 2012, ac: 1, abs: 1, transmission: 1, doors_number: 4, capacity: 4, price: 22, fuel_type: 'diesel', fuel_consumption: 4.1, is_available: 1, current_subsidiary: 0, agency: a, category: compact)
  cars << Car.new(image: 'citroen_ds4', brand: 'CITROEN', model: 'DS4', year: 2014, ac: 1, abs: 1, transmission: 0, doors_number: 5, capacity: 5, price: 25, fuel_type: 'diesel', fuel_consumption: 6.4, is_available: 1, current_subsidiary: 0, agency: a, category: standard)
  cars << Car.new(image: 'ford_focus_sw', brand: 'FORD', model: 'Focus SW', year: 2013, ac: 1, abs: 1, transmission: 1, doors_number: 5, capacity: 5, price: 23, fuel_type: 'diesel', fuel_consumption: 5.7, is_available: 1, current_subsidiary: 0, agency: a, category: standard)
  cars << Car.new(image: 'mercedes_cabrio_E250', brand: 'MERCEDES', model: 'E-250 Cabrio', year: 2012, ac: 1, abs: 1, transmission: 0, doors_number: 2, capacity: 4, price: 25, fuel_type: 'diesel', fuel_consumption: 6.5, is_available: 1, current_subsidiary: 0, agency: a, category: sport)
  cars << Car.new(image: 'mercedes_E220', brand: 'MERCEDES', model: 'E-220', year: 2012, ac: 1, abs: 1, transmission: 0, doors_number: 4, capacity: 5, price: 27, fuel_type: 'diesel', fuel_consumption: 7, is_available: 1, current_subsidiary: 0, agency: a, category: premium)
  cars << Car.new(image: 'mercedes_S250', brand: 'MERCEDES', model: 'S-250', year: 2013, ac: 1, abs: 1, transmission: 0, doors_number: 4, capacity: 5, price: 44, fuel_type: 'diesel', fuel_consumption: 7.3, is_available: 1, current_subsidiary: 0, agency: a, category: premium)
  cars << Car.new(image: 'mercedes_vito', brand: 'MERCEDES', model: 'Vito', year: 2010, ac: 0, abs: 1, transmission: 1, doors_number: 3, capacity: 9, price: 76, fuel_type: 'diesel', fuel_consumption: 8.5, is_available: 1, current_subsidiary: 0, agency: a, category: miniVan)
  cars << Car.new(image: 'mini_cooper_sd', brand: 'MINI', model: 'Cooper SD', year: 2011, ac: 1, abs: 1, transmission: 1, doors_number: 2, capacity: 2, price: 17, fuel_type: 'diesel', fuel_consumption: 4.5, is_available: 1, current_subsidiary: 0, agency: a, category: compact)
  cars << Car.new(image: 'nissan_navara', brand: 'NISSAN', model: 'Navara', year: 2011, ac: 0, abs: 1, transmission: 1, doors_number: 4, capacity: 5, price: 17, fuel_type: 'diesel', fuel_consumption: 10.3, is_available: 1, current_subsidiary: 0, agency: a, category: pickUp)
  cars << Car.new(image: 'nissan_pathfinder', brand: 'NISSAN', model: 'Pathfinder', year: 2010, ac: 0, abs: 1, transmission: 1, doors_number: 5, capacity: 5, price: 14, fuel_type: 'diesel', fuel_consumption: 10.5, is_available: 1, current_subsidiary: 0, agency: a, category: pickUp)
  cars << Car.new(image: 'nissan_qashqai', brand: 'NISSAN', model: 'Qashqai', year: 2010, ac: 1, abs: 1, transmission: 1, doors_number: 5, capacity: 5, price: 64, fuel_type: 'diesel', fuel_consumption: 6.5, is_available: 1, current_subsidiary: 0, agency: a, category: standard)
  cars << Car.new(image: 'opel_astra', brand: 'OPEL', model: 'Astra', year: 2012, ac: 1, abs: 1, transmission: 1, doors_number: 5, capacity: 5, price: 36, fuel_type: 'diesel', fuel_consumption: 4.5, is_available: 1, current_subsidiary: 0, agency: a, category: compact)
  cars << Car.new(image: 'peugout_208', brand: 'PEUGOUT', model: '208', year: 2012, ac: 1, abs: 1, transmission: 1, doors_number: 4, capacity: 5, price: 74, fuel_type: 'diesel', fuel_consumption: 5, is_available: 1, current_subsidiary: 0, agency: a, category: economy)
  cars << Car.new(image: 'peugout_407', brand: 'PEUGOUT', model: '407', year: 2013, ac: 1, abs: 1, transmission: 1, doors_number: 5, capacity: 5, price: 26, fuel_type: 'diesel', fuel_consumption: 5.9, is_available: 1, current_subsidiary: 0, agency: a, category: standard)
  cars << Car.new(image: 'peugout_107', brand: 'PEUGOUT', model: '107', year: 2014, ac: 0, abs: 1, transmission: 1, doors_number: 2, capacity: 4, price: 85, fuel_type: 'diesel', fuel_consumption: 4, is_available: 1, current_subsidiary: 0, agency: a, category: economy)
  cars << Car.new(image: 'seat_leon', brand: 'SEAT', model: 'Leon', year: 2010, ac: 1, abs: 1, transmission: 1, doors_number: 4, capacity: 5, price: 34, fuel_type: 'diesel', fuel_consumption: 4.7, is_available: 1, current_subsidiary: 0, agency: a, category: standard)
  cars << Car.new(image: 'smart_fortwo', brand: 'SMART', model: 'ForTwo', year: 2009, ac: 0, abs: 1, transmission: 0, doors_number: 2, capacity: 2, price: 52, fuel_type: 'gasoline', fuel_consumption: 3, is_available: 1, current_subsidiary: 0, agency: a, category: economy)
  cars << Car.new(image: 'toyota_avensis', brand: 'TOYOTA', model: 'Avensis', year: 2010, ac: 1, abs: 1, transmission: 1, doors_number: 4, capacity: 5, price: 65, fuel_type: 'diesel', fuel_consumption: 5.5, is_available: 1, current_subsidiary: 0, agency: a, category: premium)
  cars << Car.new(image: 'volkswagen_transporter', brand: 'VOLKSWAGEN', model: 'Transporter', year: 2010, ac: 0, abs: 1, transmission: 1, doors_number: 3, capacity: 9, price: 28, fuel_type: 'diesel', fuel_consumption: 7.1, is_available: 1, current_subsidiary: 0, agency: a, category: miniVan)
  cars << Car.new(image: 'vw_polo', brand: 'VOLKSWAGEN', model: 'Polo', year: 2011, ac: 1, abs: 1, transmission: 1, doors_number: 4, capacity: 5, price: 73, fuel_type: 'diesel', fuel_consumption: 5.8, is_available: 1, current_subsidiary: 0, agency: a, category: economy)


  cars_array = []

  puts 'Alamo Cars'

  alamo_subs = Subsidiary.where(agency: Agency.find_by(name: 'Alamo'))
  alamo_subs.each do |f|
    cars.sample(6).each do |car|
      new_car                    = car.dup
      new_car.agency             = f.agency
      new_car.current_subsidiary = f.id
      cars_array << new_car
    end
  end

  puts 'Avis Cars'
  alamo_subs = Subsidiary.where(agency: Agency.find_by(name: 'Avis'))
  alamo_subs.each do |f|
    cars.sample(6).each do |car|
      new_car                    = car.dup
      new_car.agency             = f.agency
      new_car.current_subsidiary = f.id
      cars_array << new_car
    end
  end

  puts 'Budget Cars'
  alamo_subs = Subsidiary.where(agency: Agency.find_by(name: 'Budget'))
  alamo_subs.each do |f|
    cars.sample(6).each do |car|
      new_car                    = car.dup
      new_car.agency             = f.agency
      new_car.current_subsidiary = f.id
      cars_array << new_car
    end
  end

  puts 'Dollar Cars'
  alamo_subs = Subsidiary.where(agency: Agency.find_by(name: 'Dollar'))
  alamo_subs.each do |f|
    cars.sample(6).each do |car|
      new_car                    = car.dup
      new_car.agency             = f.agency
      new_car.current_subsidiary = f.id
      cars_array << new_car
    end
  end

  puts 'Europcar Cars'
  alamo_subs = Subsidiary.where(agency: Agency.find_by(name: 'Europcar'))
  alamo_subs.each do |f|
    cars.sample(6).each do |car|
      new_car                    = car.dup
      new_car.agency             = f.agency
      new_car.current_subsidiary = f.id
      cars_array << new_car
    end
  end

  puts 'Hertz Cars'
  alamo_subs = Subsidiary.where(agency: Agency.find_by(name: 'Hertz'))
  alamo_subs.each do |f|
    cars.sample(6).each do |car|
      new_car                    = car.dup
      new_car.agency             = f.agency
      new_car.current_subsidiary = f.id
      cars_array << new_car
    end
  end

  puts 'National Cars'
  alamo_subs = Subsidiary.where(agency: Agency.find_by(name: 'National'))
  alamo_subs.each do |f|
    cars.sample(6).each do |car|
      new_car                    = car.dup
      new_car.agency             = f.agency
      new_car.current_subsidiary = f.id
      cars_array << new_car
    end
  end


  puts 'Thrifty Cars'
  alamo_subs = Subsidiary.where(agency: Agency.find_by(name: 'Thrifty'))
  alamo_subs.each do |f|
    cars.sample(6).each do |car|
      new_car                    = car.dup
      new_car.agency             = f.agency
      new_car.current_subsidiary = f.id
      cars_array << new_car
    end
  end

  Car.import cars_array
  puts '--------- End of Car Seeds File ---------'
end