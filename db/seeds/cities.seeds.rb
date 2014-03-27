after :countries do
  puts '--------- Begin of Cities Seeds File ---------'
  countries = Country.all
  austria = countries.where(name: 'Austria').first
  belgium = countries.where(name: 'Belgium').first
  bulgaria = countries.where(name: 'Bulgaria').first
  croatia = countries.where(name: 'Croatia').first
  cyprus = countries.where(name: 'Cyprus').first
  czech = countries.where(name:'Czech Republic').first
  egypt = countries.where(name:'Egypt').first
  estonia = countries.where(name:'Estonia').first
  finland = countries.where(name:'Finland').first
  france  = countries.where(name:'France').first
  germany  = countries.where(name:'Germany').first
  greece = countries.where(name:'Greece').first
  hungary = countries.where(name:'Hungary').first
  italy = countries.where(name:'Italy').first
  latvia = countries.where(name:'Latvia').first
  lithuania = countries.where(name:'Lithuania').first
  luxembourg = countries.where(name:'Luxembourg').first
  malta = countries.where(name:'Malta').first
  netherlands = countries.where(name:'Netherlands').first
  norway = countries.where(name:'Norway').first
  poland = countries.where(name:'Poland').first
  portugal = countries.where(name:'Portugal').first
  romania  = countries.where(name:'Romania').first
  russia = countries.where(name:'Russia').first
  serbia = countries.where(name:'Serbia').first
  slovakia = countries.where(name:'Slovakia').first
  slovenia = countries.where(name:'Slovenia').first
  spain =  countries.where(name:'Spain').first
  switzerland = countries.where(name:'Switzerland').first
  turkey =  countries.where(name:'Turkey').first
  uk =  countries.where(name:'United Kingdom').first
  cities = []
  cities << City.new(name: 'Innsbruck', is_taxi:true, country: austria )
  cities << City.new(name: 'Klagenfurt', is_taxi:true, country: austria)
  cities << City.new(name: 'Salzburg', is_taxi:true, country: austria)
  cities << City.new(name: 'Vienna', is_taxi:true, country: austria)
  cities << City.new(name: 'Antwerp', is_taxi:true, country: belgium )
  cities << City.new(name: 'Bruges', is_taxi:true, country: belgium )
  cities << City.new(name: 'Brussels', is_taxi:true, country: belgium )
  cities << City.new(name: 'Burgas', is_taxi:true, country: bulgaria )
  cities << City.new(name: 'Plovdiv', is_taxi:true, country: bulgaria)
  cities << City.new(name: 'Sofia', is_taxi:true, country: bulgaria)
  cities << City.new(name: 'Varna', is_taxi:true, country: bulgaria)
  cities << City.new(name: 'Dubrovnik', is_taxi:true, country: croatia)
  cities << City.new(name: 'Osijek', is_taxi:true, country: croatia)
  cities << City.new(name: 'Pula', is_taxi:true, country: croatia)
  cities << City.new(name: 'Rijeka', is_taxi:true, country: croatia)
  cities << City.new(name: 'Split', is_taxi:true, country: croatia)
  cities << City.new(name: 'Zadar', is_taxi:true, country: croatia)
  cities << City.new(name: 'Zagreb', is_taxi:true, country: croatia)
  cities << City.new(name: 'Larnaca', is_taxi:true, country: cyprus)
  cities << City.new(name: 'Limassol', is_taxi:true, country: cyprus)
  cities << City.new(name: 'Paphos', is_taxi:true, country: cyprus)
  cities << City.new(name: 'Prague', is_taxi:true, country: czech)
  cities << City.new(name: 'Alexandria', is_taxi:true, country: egypt)
  cities << City.new(name: 'Aswan', is_taxi:true, country: egypt)
  cities << City.new(name: 'Cairo', is_taxi:true, country: egypt)
  cities << City.new(name: 'Dabaa', is_taxi:true, country: egypt)
  cities << City.new(name: 'Hurghada', is_taxi:true, country: egypt)
  cities << City.new(name: 'Luxor', is_taxi:true, country: egypt)
  cities << City.new(name: 'Marsa Alam', is_taxi:true, country: egypt)
  cities << City.new(name: 'Sharm El Sheikh', is_taxi:true, country: egypt)
  cities << City.new(name: 'Taba', is_taxi:true, country: egypt)
  cities << City.new(name: 'Tallinn', is_taxi:true, country: estonia)
  cities << City.new(name: 'Tartu', is_taxi:true, country: estonia)
  cities << City.new(name: 'Helsinki', is_taxi:true, country: finland)
  cities << City.new(name: 'Annecy', is_taxi:true, country: france)
  cities << City.new(name: 'Biarritz', is_taxi:true, country: france)
  cities << City.new(name: 'Bordeaux', is_taxi:true, country: france)
  cities << City.new(name: 'Cannes', is_taxi:true, country: france)
  cities << City.new(name: 'Chambery', is_taxi:true, country: france)
  cities << City.new(name: 'Grenoble', is_taxi:true, country: france)
  cities << City.new(name: 'Lyon', is_taxi:true, country: france)
  cities << City.new(name: 'Marseille', is_taxi:true, country: france)
  cities << City.new(name: 'Metz', is_taxi:true, country: france)
  cities << City.new(name: 'Montpellier', is_taxi:true, country: france)
  cities << City.new(name: 'Nancy', is_taxi:true, country: france)
  cities << City.new(name: 'Nice', is_taxi:true, country: france)
  cities << City.new(name: 'Paris', is_taxi:true, country: france)
  cities << City.new(name: 'Pau', is_taxi:true, country: france)
  cities << City.new(name: 'Perpignan', is_taxi:true, country: france)
  cities << City.new(name: 'Strasbourg', is_taxi:true, country: france)
  cities << City.new(name: 'Tarbes', is_taxi:true, country: france)
  cities << City.new(name: 'Toulon', is_taxi:true, country: france)
  cities << City.new(name: 'Toulouse', is_taxi:true, country: france)
  cities << City.new(name: 'Berlin', is_taxi:true, country: germany)
  cities << City.new(name: 'Bremen', is_taxi:true, country: germany)
  cities << City.new(name: 'Cologne', is_taxi:true, country: germany)
  cities << City.new(name: 'Dusseldorf', is_taxi:true, country: germany)
  cities << City.new(name: 'Frankfurt', is_taxi:true, country: germany)
  cities << City.new(name: 'Friedrichshafen', is_taxi:true, country: germany)
  cities << City.new(name: 'Hamburg', is_taxi:true, country: germany)
  cities << City.new(name: 'Hannover', is_taxi:true, country: germany)
  cities << City.new(name: 'Leipzig', is_taxi:true, country: germany)
  cities << City.new(name: 'Munich', is_taxi:true, country: germany)
  cities << City.new(name: 'Nuremberg', is_taxi:true, country: germany)
  cities << City.new(name: 'Stuttgart', is_taxi:true, country: germany)
  cities << City.new(name: 'Athens', is_taxi:true, country: greece)
  cities << City.new(name: 'Crete', is_taxi:true, country: greece)
  cities << City.new(name: 'Kos', is_taxi:true, country: greece)
  cities << City.new(name: 'Mykonos', is_taxi:true, country: greece)
  cities << City.new(name: 'Naxos', is_taxi:true, country: greece)
  cities << City.new(name: 'Paros', is_taxi:true, country: greece)
  cities << City.new(name: 'Rhodes', is_taxi:true, country: greece)
  cities << City.new(name: 'Santorini', is_taxi:true, country: greece)
  cities << City.new(name: 'Zakynthos', is_taxi:true, country: greece)
  cities << City.new(name: 'Budapest', is_taxi:true, country: hungary)
  cities << City.new(name: 'Alghero', is_taxi:true, country: italy)
  cities << City.new(name: 'Ancona', is_taxi:true, country: italy)
  cities << City.new(name: 'Bergamo', is_taxi:true, country: italy)
  cities << City.new(name: 'Bologna', is_taxi:true, country: italy)
  cities << City.new(name: 'Bolzano', is_taxi:true, country: italy)
  cities << City.new(name: 'Brescia', is_taxi:true, country: italy)
  cities << City.new(name: 'Cagliari', is_taxi:true, country: italy)
  cities << City.new(name: 'Catania', is_taxi:true, country: italy)
  cities << City.new(name: 'Florence', is_taxi:true, country: italy)
  cities << City.new(name: 'Forli', is_taxi:true, country: italy)
  cities << City.new(name: 'Genoa', is_taxi:true, country: italy)
  cities << City.new(name: 'Lamezia Terme', is_taxi:true, country: italy)
  cities << City.new(name: 'Milan', is_taxi:true, country: italy)
  cities << City.new(name: 'Naples', is_taxi:true, country: italy)
  cities << City.new(name: 'Olbia', is_taxi:true, country: italy)
  cities << City.new(name: 'Palermo', is_taxi:true, country: italy)
  cities << City.new(name: 'Pescara', is_taxi:true, country: italy)
  cities << City.new(name: 'Pisa', is_taxi:true, country: italy)
  cities << City.new(name: 'Rimini', is_taxi:true, country: italy)
  cities << City.new(name: 'Rome', is_taxi:true, country: italy)
  cities << City.new(name: 'Trapani', is_taxi:true, country: italy)
  cities << City.new(name: 'Treviso', is_taxi:true, country: italy)
  cities << City.new(name: 'Trieste', is_taxi:true, country: italy)
  cities << City.new(name: 'Turin', is_taxi:true, country: italy)
  cities << City.new(name: 'Venice', is_taxi:true, country: italy)
  cities << City.new(name: 'Verona', is_taxi:true, country: italy)
  cities << City.new(name: 'Liepaja', is_taxi:true, country: latvia)
  cities << City.new(name: 'Riga', is_taxi:true, country: latvia)
  cities << City.new(name: 'Kaunas', is_taxi:true, country: lithuania)
  cities << City.new(name: 'Palanga', is_taxi:true, country: lithuania)
  cities << City.new(name: 'Vilnius', is_taxi:true, country: lithuania)
  cities << City.new(name: 'Luxembourg', is_taxi:true, country: luxembourg)
  cities << City.new(name: 'Valletta', is_taxi:true, country: malta)
  cities << City.new(name: 'Amsterdam', is_taxi:true, country: netherlands)
  cities << City.new(name: 'Eindhoven', is_taxi:true, country: netherlands)
  cities << City.new(name: 'Rotterdam', is_taxi:true, country: netherlands)
  cities << City.new(name: 'Oslo', is_taxi:true, country: norway)
  cities << City.new(name: 'Bydgoszcz', is_taxi:true, country: poland)
  cities << City.new(name: 'Gdansk', is_taxi:true, country: poland)
  cities << City.new(name: 'Katowice', is_taxi:true, country: poland)
  cities << City.new(name: 'Krakow', is_taxi:true, country: poland)
  cities << City.new(name: 'Poznan', is_taxi:true, country: poland)
  cities << City.new(name: 'Warsaw', is_taxi:true, country: poland)
  cities << City.new(name: 'Wroclaw', is_taxi:true, country: poland)
  cities << City.new(name: 'Beja', is_taxi:true, country: portugal)
  cities << City.new(name: 'Faro', is_taxi:true, country: portugal)
  cities << City.new(name: 'Funchal', is_taxi:true, country: portugal)
  cities << City.new(name: 'Lisbon', is_taxi:true, country: portugal)
  cities << City.new(name: 'Porto', is_taxi:true, country: portugal)
  cities << City.new(name: 'Bucharest', is_taxi:true, country: romania)
  cities << City.new(name: 'Cluj Napoca', is_taxi:true, country: romania)
  cities << City.new(name: 'Sibiu', is_taxi:true, country: romania)
  cities << City.new(name: 'Timisoara', is_taxi:true, country: romania)
  cities << City.new(name: 'Moscow', is_taxi:true, country: russia)
  cities << City.new(name: 'Saint Petersburg', is_taxi:true, country: russia)
  cities << City.new(name: 'Belgrade', is_taxi:true, country: serbia)
  cities << City.new(name: 'Bratislava', is_taxi:true, country: slovakia)
  cities << City.new(name: 'Bled', is_taxi:true, country: slovenia)
  cities << City.new(name: 'Ljubljana', is_taxi:true, country: slovenia)
  cities << City.new(name: 'Portoroz', is_taxi:true, country: slovenia)
  cities << City.new(name: 'Alicante', is_taxi:true, country: spain)
  cities << City.new(name: 'Almeria', is_taxi:true, country: spain)
  cities << City.new(name: 'Barcelona', is_taxi:true, country: spain)
  cities << City.new(name: 'Bilbao', is_taxi:true, country: spain)
  cities << City.new(name: 'Girona', is_taxi:true, country: spain)
  cities << City.new(name: 'Gran Canaria', is_taxi:true, country: spain)
  cities << City.new(name: 'Madrid', is_taxi:true, country: spain)
  cities << City.new(name: 'Malaga', is_taxi:true, country: spain)
  cities << City.new(name: 'Murcia', is_taxi:true, country: spain)
  cities << City.new(name: 'San Sebastian', is_taxi:true, country: spain)
  cities << City.new(name: 'Santander', is_taxi:true, country: spain)
  cities << City.new(name: 'Tenerife', is_taxi:true, country: spain)
  cities << City.new(name: 'Valencia', is_taxi:true, country: spain)
  cities << City.new(name: 'Basel', is_taxi:true, country: switzerland)
  cities << City.new(name: 'Bern', is_taxi:true, country: switzerland)
  cities << City.new(name: 'Geneva', is_taxi:true, country: switzerland)
  cities << City.new(name: 'Lugano', is_taxi:true, country: switzerland)
  cities << City.new(name: 'Sion', is_taxi:true, country: switzerland)
  cities << City.new(name: 'Zurich', is_taxi:true, country: switzerland)
  cities << City.new(name: 'Ankara', is_taxi:true, country: turkey)
  cities << City.new(name: 'Antalya', is_taxi:true, country:  turkey)
  cities << City.new(name: 'Bodrum', is_taxi:true, country: turkey)
  cities << City.new(name: 'Dalaman', is_taxi:true, country: turkey)
  cities << City.new(name: 'Istanbul', is_taxi:true, country: turkey)
  cities << City.new(name: 'Izmir', is_taxi:true, country: turkey)
  cities << City.new(name: 'Birmingham', is_taxi:true, country: uk)
  cities << City.new(name: 'Bristol', is_taxi:true, country: uk)
  cities << City.new(name: 'Edinburgh', is_taxi:true, country: uk)
  cities << City.new(name: 'Glasgow', is_taxi:true, country: uk)
  cities << City.new(name: 'London', is_taxi:true, country: uk)
  cities << City.new(name: 'Manchester', is_taxi:true, country: uk)
  City.import cities
  puts '--------- End of Cities Seeds File ---------'
end