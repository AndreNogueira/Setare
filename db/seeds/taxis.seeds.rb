taxis = []
taxis << Taxi.new(name:'Sedan Car', image:'sedan_car',passengers_number: 3, luggage:4,price_km:1.3)
taxis << Taxi.new(name:'Mercedes E class', image:'mercedes_e_class',passengers_number: 3, luggage:4,price_km:1.4)
taxis << Taxi.new(name:'Mercedes S class', image:'mercedes_s_class',passengers_number: 3, luggage:5,price_km:1.5)
taxis << Taxi.new(name:'Minivan', image:'minivan',passengers_number: 6, luggage:16,price_km: 1.7)
taxis << Taxi.new(name:'Minibus', image:'minibus',passengers_number: 8, luggage:14,price_km: 1.7)
taxis << Taxi.new(name:'Private Transfer 12', image:'private_transfer_12',passengers_number: 12, luggage:24,price_km: 2.1)
taxis << Taxi.new(name:'Private Transfer 16', image:'private_transfer_16',passengers_number: 16, luggage:32,price_km: 2.3)
taxis << Taxi.new(name:'Minibus 8pax', image:'minibus_8',passengers_number: 8, luggage:16,price_km: 1.7)
taxis << Taxi.new(name:'Minibus 16pax', image:'minibus_16',passengers_number: 16, luggage:32,price_km: 2.0)
taxis << Taxi.new(name:'Minivan MPV 5pax', image:'minivan_mpv_5',passengers_number: 5, luggage:10,price_km:1.6)
taxis << Taxi.new(name:'Standard Estate Car', image:'standard_estate',passengers_number: 4, luggage:8,price_km: 1.2)
taxis << Taxi.new(name:'Standard Sedan Car', image:'standard_sedan',passengers_number: 4, luggage:4,price_km: 1.1)

puts '----Begin Insert Taxis ----'
Taxi.import taxis
puts '----End Insert Taxis ----'