puts '--------- Begin of Taxis Seeds File ---------'
taxis = []


taxis << Taxi.new(name: 'Sedan Car', image: 'sedan_car', passengers_number: 3, luggage: 4, price_km: 1.3)
taxis << Taxi.new(name: 'Saloon Car', image: 'saloon_car', passengers_number: 4, luggage: 4, price_km: 1.5)
taxis << Taxi.new(name: 'Toyota Seand Car', image: 'toyota_car', passengers_number: 4, luggage: 5, price_km: 2)
taxis << Taxi.new(name: 'Standard Estate Car', image: 'standard_estate', passengers_number: 4, luggage: 8, price_km: 1.2)
taxis << Taxi.new(name: 'VW Caravelle ', image: 'vw_caravelle', passengers_number: 6, luggage: 12, price_km: 1.3)
taxis << Taxi.new(name: 'Minivan', image: 'minivan', passengers_number: 6, luggage: 16, price_km: 1.7)
taxis << Taxi.new(name: 'Luxury Minivan', image: 'luxury_minivan', passengers_number: 7, luggage: 14, price_km: 2)
taxis << Taxi.new(name: 'Minivan MPV 5pax', image: 'minivan_mpv_5', passengers_number: 5, luggage: 10, price_km: 1.6)
taxis << Taxi.new(name: 'Mercedes E class', image: 'mercedes_e_class', passengers_number: 3, luggage: 4, price_km: 1.4)
taxis << Taxi.new(name: 'Mercedes S class', image: 'mercedes_s_class', passengers_number: 3, luggage: 5, price_km: 1.5)
taxis << Taxi.new(name: 'Luxury Sedan', image: 'luxury_sedan', passengers_number: 4, luggage: 5, price_km: 2.0)
taxis << Taxi.new(name: 'VW Transporter', image: 'vw_transporter', passengers_number: 8, luggage: 16, price_km: 1.85)
taxis << Taxi.new(name: 'Private Transfer 4pax', image: 'private_transfer_4pax', passengers_number: 4, luggage: 8, price_km: 1.75)
taxis << Taxi.new(name: 'Private Transfer 12', image: 'private_transfer_12', passengers_number: 12, luggage: 24, price_km: 2.1)
taxis << Taxi.new(name: 'Private Transfer 16', image: 'private_transfer_16', passengers_number: 16, luggage: 32, price_km: 2.3)
taxis << Taxi.new(name: 'Mercedes Viano Transfer', image: 'mercedes_viano', passengers_number: 6, luggage: 12, price_km: 2.5)
taxis << Taxi.new(name: 'Toyota Microbus', image: 'toyota_microbus', passengers_number: 6, luggage: 12, price_km: 1.9)
taxis << Taxi.new(name: 'Toyota Minibus', image: 'toyota_minibus', passengers_number: 8, luggage: 16, price_km: 2.1)
taxis << Taxi.new(name: 'Minibus 8pax', image: 'minibus_8', passengers_number: 8, luggage: 16, price_km: 1.7)
taxis << Taxi.new(name: 'Minibus 16pax', image: 'minibus_16', passengers_number: 16, luggage: 32, price_km: 2.0)
taxis << Taxi.new(name: 'Bus 14pax', image: 'bus_14pax', passengers_number: 14, luggage: 28, price_km: 3.0)
taxis << Taxi.new(name: 'Bus 16pax', image: 'bus_16pax', passengers_number: 16, luggage: 32, price_km: 3.25)
taxis << Taxi.new(name: 'Bus 16 Seater', image: 'bus_16_seater', passengers_number: 16, luggage: 32, price_km: 3.5)
taxis << Taxi.new(name: 'Bus 19pax', image: 'bus_19pax', passengers_number: 19, luggage: 38, price_km: 4.25)
taxis << Taxi.new(name: 'Bus 29pax', image: 'bus_29pax', passengers_number: 29, luggage: 58, price_km: 5.25)
taxis << Taxi.new(name: 'Bus 35pax', image: 'bus_35pax', passengers_number: 35, luggage: 70, price_km: 5.75)
taxis << Taxi.new(name: 'Bus 49pax', image: 'bus_49pax', passengers_number: 49, luggage: 98, price_km: 6.5)
taxis << Taxi.new(name: 'Bus 52pax', image: 'bus_52pax', passengers_number: 52, luggage: 104, price_km: 6.75)

Taxi.import taxis
puts '--------- End of Agencies Seeds File ---------'