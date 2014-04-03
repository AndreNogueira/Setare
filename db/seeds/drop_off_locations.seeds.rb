after :pick_up_locations do
  puts '--------- Begin of Drop Off Locations Seeds File ---------'
  ActiveRecord::Base.transaction do

    puts 'Pick Up Locations for Innsbruck'
    pick_ups = City.find_by(name: 'Innsbruck').pick_up_locations.reorder('id asc')

    ['Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'St Anton am Arlberg', 'Kitzbuhel', 'Mayrhofen', 'Ischgl', 'Fugen', 'Lech', 'Absam', 'Achenkirch', 'Affenhausen', 'Alpbach', 'Alpe Cermis', 'Alpe di Pampeago', 'Alpe di Siusi', 'Alta Badia', 'Arabba', 'Arzl im Pitztal', 'Aschau im Zillertal', 'Aschbach Markt', 'Axamer Lizum', 'Axams', 'Bad Haring', 'Bad Tolz', 'Baumkirchen', 'Berwang', 'Biberwier', 'Bichlbach', 'Birgitz', 'Bludenz', 'Bolzano', 'Bregenz', 'Breitenbach', 'Brennerpass', 'Brixen', 'Brixen im Thale', 'Brixlegg', 'Bruck am Ziller', 'Bruneck', 'Campitello di Fassa', 'Canazei', 'Cavalese', 'Chur', 'Colfosco', 'Compatsch', 'Cortina d Ampezzo', 'Corvara', 'Dalaas', 'Davos', 'Dimaro', 'Dirschenbach', 'Dobbiaco', 'Dornbirn', 'Ebbs', 'Eben am Achensee', 'Ehrwald', 'Eibsee', 'Eigenhofen', 'Elblingenalp', 'Ellmau', 'Elmen', 'Erl', 'Erpfendorf', 'Feldkirch', 'Fieberbrunn', 'Fiecht', 'Finkenberg', 'Fiss', 'Flaurling', 'Fliess', 'Flirsch', 'Folgarida', 'Fortezza', 'Frohnhausen', 'Fulpmes', 'Fussen', 'Galtur', 'Garmisch Partenkirchen', 'Gerlos', 'Gnadenwald', 'Going', 'Going am Wilden Kaiser', 'Gossensass', 'Gotzens', 'Gotzis', 'Graz', 'Gries Sellrain', 'Gries am Brenner', 'Grinzens', 'Gschnitz', 'Hagen', 'Hagen Lofer', 'Haiming', 'Hall in Tirol', 'Hatting', 'Heiterwang', 'Hinterglemm', 'Hintertux', 'Hochfilzen', 'Hochfugen', 'Hochgurgl', 'Hochzirl', 'Hofen', 'Hohenems', 'Hopfgarten', 'Hopfgarten im Brixental', 'Huben', 'Igls', 'Imst', 'Innsbruck City Centre', 'Inzing', 'Itter', 'Jenbach', 'Jochberg', 'Judenstein', 'Kaltenbach', 'Kampl', 'Kappl', 'Kaprun', 'Karres', 'Kastelruth', 'Kauns', 'Kematen', 'Kiefersfelden', 'Kirchberg in Tirol', 'Kirchbichl', 'Klagenfurt', 'Kolsass', 'Konigsleiten', 'Kossen', 'Kramsach', 'Krossbach', 'Kufstein', 'Kuhtai', 'Kundl', 'Ladis', 'Landeck', 'Lanersbach', 'Langen am Arlberg', 'Langenfeld', 'Lans', 'Leiblfing', 'Leithen', 'Lermoos', 'Leutasch', 'Lienz', 'Linz ', 'Livigno', 'Lofer', 'Lusens', 'Lustenau', 'Madonna di Campiglio', 'Mathon', 'Matrei am Brenner', 'Matrei in Osttirol', 'Maurach', 'Mazzin', 'Meran', 'Merano', 'Mieders', 'Milders', 'Mils bei Imst', 'Misurina', 'Mittenwald', 'Mittersill', 'Moena', 'Motz', 'Munich City Centre', 'Munster', 'Munster Tirol', 'Murnau', 'Mutters', 'Nassereth', 'Natters', 'Nauders', 'Navis', 'Neder', 'Neu Gotzens', 'Neustift', 'Neustift im Stubaital', 'Niederau', 'Nova Levante', 'Oberammergau', 'Oberau Wildschonau', 'Obereggen', 'Obergurgl', 'Oberhofen', 'Obermieming', 'Obernberg am Brenner', 'Oberperfuss', 'Obladis', 'Obsteig', 'Oetz', 'Omes', 'Ortisei', 'Passo Lavaze', 'Passo San Pellegrino', 'Patsch', 'Pertisau', 'Pettnau', 'Pettnau am Arlberg', 'Pfaffenhofen', 'Pfons', 'Pfunds', 'Pians', 'Pill', 'Polling', 'Predazzo', 'Prutz', 'Radfeld', 'Ramsau im Zillertal', 'Ranggen', 'Rankweil', 'Rans', 'Rattenberg', 'Rauris', 'Reith bei Seefeld', 'Reith im Alpbachtal', 'Reutte', 'Ried im Zillertal', 'Rietz', 'Rinn', 'Ritten', 'Rosenheim', 'Rotholz', 'Rum', 'Saalbach', 'Salzburg City Centre', 'San Candido', 'San Cassiano', 'Santa Cristina Val Gardena', 'Sauttens', 'Scharnitz', 'Schattwald', 'Scheffau am Wilden Kaiser', 'Schlitters', 'Schmirn', 'Schoenberg', 'Schonwies', 'Schwaz', 'See im Paznauntal', 'Seefeld in Tirol', 'Sellrain', 'Selva di Val Gardena', 'Serfaus', 'Sillian', 'Silz', 'Sistrans', 'Solden', 'Solden Tyrol', 'Soll', 'St Christoph am Arlberg', 'St Jakob am Arlberg', 'St Johann in Tirol', 'St Moritz', 'St Peter in Tirol', 'St Sigmund im Sellrain', 'St Ulrich Ortisei', 'Stams', 'Stans', 'Stanzach', 'Steeg', 'Steinach am Brenner', 'Steinhaus im Ahrntal', 'Sterzing', 'Strass im Zillertal', 'Strengen am Arlberg', 'Stubaier Gletscher', 'Stumm', 'Tannheim', 'Tarrenz', 'Tegernsee', 'Telfes', 'Telfs', 'Terfens', 'Thaur', 'Thiersee', 'Trento', 'Trin', 'Tulfes', 'Tumpen', 'Uderns', 'Umhausen', 'Untermieming', 'Valle Aurina', 'Verona City Centre', 'Vienna City Centre', 'Vigo di Fassa', 'Vomperberg', 'Waidring', 'Walchsee', 'Warth', 'Wattens', 'Weer', 'Weissenmbach Lech', 'Wenns', 'Westendorf', 'Wiesing', 'Wildschonau Oberau', 'Worgl', 'Zams', 'Zell am See', 'Zell am Ziller', 'Zernez', 'Zirl', 'Zurich City Centre', 'Zurs', 'Zwieselstein'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'St Anton am Arlberg', 'Kitzbuhel', 'Mayrhofen', 'Ischgl', 'Fugen', 'Lech', 'Absam', 'Achenkirch', 'Affenhausen', 'Alpbach', 'Arzl im Pitztal', 'Aschau im Zillertal', 'Axamer Lizum', 'Axams', 'Bad Haring', 'Bad Tolz', 'Baumkirchen', 'Berwang', 'Biberwier', 'Bichlbach', 'Birgitz', 'Bludenz', 'Bolzano', 'Bregenz', 'Breitenbach', 'Brixen', 'Brixen im Thale', 'Brixlegg', 'Bruck am Ziller', 'Bruneck', 'Chur', 'Cortina d Ampezzo', 'Corvara', 'Dalaas', 'Davos', 'Dirschenbach', 'Dornbirn', 'Ebbs', 'Eben am Achensee', 'Ehrwald', 'Eibsee', 'Eigenhofen', 'Elblingenalp', 'Ellmau', 'Elmen', 'Erl', 'Erpfendorf', 'Feldkirch', 'Fieberbrunn', 'Fiecht', 'Finkenberg', 'Fiss', 'Flaurling', 'Fliess', 'Flirsch', 'Frohnhausen', 'Fulpmes', 'Fussen', 'Galtur', 'Garmisch Partenkirchen', 'Gerlos', 'Gnadenwald', 'Going am Wilden Kaiser', 'Gossensass', 'Gotzens', 'Gotzis', 'Graz', 'Gries Sellrain', 'Gries am Brenner', 'Grinzens', 'Gschnitz', 'Hagen Lofer', 'Haiming', 'Hall in Tirol', 'Hatting', 'Heiterwang', 'Hintertux', 'Hochfilzen', 'Hochzirl', 'Hofen', 'Hohenems', 'Hopfgarten', 'Huben', 'Igls', 'Imst', 'Innsbruck City Centre', 'Inzing', 'Itter', 'Jenbach', 'Judenstein', 'Kaltenbach', 'Kampl', 'Kappl', 'Karres', 'Kauns', 'Kematen', 'Kiefersfelden', 'Kirchberg in Tirol', 'Kirchbichl', 'Klagenfurt', 'Kolsass', 'Kossen', 'Kramsach', 'Krossbach', 'Kufstein', 'Kuhtai', 'Kundl', 'Ladis', 'Landeck', 'Lanersbach', 'Langen am Arlberg', 'Langenfeld', 'Lans', 'Leiblfing', 'Leithen', 'Lermoos', 'Leutasch', 'Lienz', 'Linz ', 'Lofer', 'Lusens', 'Lustenau', 'Mathon', 'Matrei am Brenner', 'Matrei in Osttirol', 'Maurach', 'Merano', 'Mieders', 'Milders', 'Mils bei Imst', 'Mittenwald', 'Mittersill', 'Motz', 'Munich City Centre', 'Munster Tirol', 'Murnau', 'Mutters', 'Nassereth', 'Natters', 'Nauders', 'Navis', 'Neder', 'Neu Gotzens', 'Neustift', 'Oberammergau', 'Obergurgl', 'Oberhofen', 'Obermieming', 'Obernberg am Brenner', 'Oberperfuss', 'Obladis', 'Obsteig', 'Omes', 'Patsch', 'Pertisau', 'Pettnau', 'Pettnau am Arlberg', 'Pfaffenhofen', 'Pfons', 'Pfunds', 'Pians', 'Pill', 'Polling', 'Prutz', 'Radfeld', 'Ramsau im Zillertal', 'Ranggen', 'Rankweil', 'Rans', 'Rattenberg', 'Reith bei Seefeld', 'Reutte', 'Ried im Zillertal', 'Rietz', 'Rinn', 'Rosenheim', 'Rotholz', 'Rum', 'Salzburg City Centre', 'Sauttens', 'Schattwald', 'Schlitters', 'Schmirn', 'Schoenberg', 'Schonwies', 'Schwaz', 'See im Paznauntal', 'Seefeld in Tirol', 'Sellrain', 'Selva di Val Gardena', 'Serfaus', 'Sillian', 'Silz', 'Sistrans', 'Solden', 'Solden Tyrol', 'Soll', 'St Jakob am Arlberg', 'St Johann in Tirol', 'St Moritz', 'St Peter in Tirol', 'St Sigmund im Sellrain', 'Stams', 'Stans', 'Stanzach', 'Steeg', 'Steinach am Brenner', 'Sterzing', 'Strass im Zillertal', 'Strengen am Arlberg', 'Stubaier Gletscher', 'Stumm', 'Tannheim', 'Tarrenz', 'Tegernsee', 'Telfes', 'Telfs', 'Terfens', 'Thaur', 'Thiersee', 'Trento', 'Trin', 'Tulfes', 'Tumpen', 'Uderns', 'Umhausen', 'Untermieming', 'Vienna City Centre', 'Vomperberg', 'Waidring', 'Walchsee', 'Wattens', 'Weer', 'Wenns', 'Westendorf', 'Wiesing', 'Wildschonau Oberau', 'Worgl', 'Zams', 'Zell am See', 'Zell am Ziller', 'Zirl', 'Zurich City Centre', 'Zurs', 'Zwieselstein'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Basel Airport', 'Bern Airport', 'Bern City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Ljubljana Airport', 'Memmingen Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bled', 'Innsbruck City Centre', 'Portoroz', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Zurich Airport', 'Zurich Train Station', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Vienna City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Ljubljana Airport', 'Memmingen Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bled', 'Innsbruck City Centre', 'Portoroz', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Basel Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Sion Airport', 'Zurich Airport', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Munich Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    ['Munich Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[77]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[78]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[79]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Zurich Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[80]
    end

    ['Munich Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[81]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[82]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[83]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[84]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[85]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[86]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[87]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[88]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Innsbruck Airport', 'Ljubljana Airport', 'Memmingen Airport', 'Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'St Anton am Arlberg', 'Kitzbuhel', 'Mayrhofen', 'Ischgl', 'Fugen', 'Lech', 'Absam', 'Achenkirch', 'Affenhausen', 'Alpbach', 'Arzl im Pitztal', 'Aschau im Zillertal', 'Axamer Lizum', 'Axams', 'Bad Haring', 'Bad Tolz', 'Baumkirchen', 'Bern City Centre', 'Berwang', 'Biberwier', 'Bichlbach', 'Birgitz', 'Bled', 'Bludenz', 'Bolzano', 'Bregenz', 'Breitenbach', 'Brixen', 'Brixen im Thale', 'Brixlegg', 'Bruck am Ziller', 'Bruneck', 'Chur', 'Cortina d Ampezzo', 'Corvara', 'Dalaas', 'Davos', 'Dirschenbach', 'Dornbirn', 'Ebbs', 'Eben am Achensee', 'Ehrwald', 'Eibsee', 'Eigenhofen', 'Elblingenalp', 'Ellmau', 'Elmen', 'Erl', 'Erpfendorf', 'Feldkirch', 'Fieberbrunn', 'Fiecht', 'Finkenberg', 'Fiss', 'Flaurling', 'Fliess', 'Flirsch', 'Frohnhausen', 'Fulpmes', 'Fussen', 'Galtur', 'Garmisch Partenkirchen', 'Gerlos', 'Gnadenwald', 'Going am Wilden Kaiser', 'Gossensass', 'Gotzens', 'Gotzis', 'Graz', 'Gries Sellrain', 'Gries am Brenner', 'Grinzens', 'Gschnitz', 'Hagen Lofer', 'Haiming', 'Hall in Tirol', 'Hatting', 'Heiterwang', 'Hintertux', 'Hochfilzen', 'Hochzirl', 'Hofen', 'Hohenems', 'Hopfgarten', 'Huben', 'Igls', 'Imst', 'Inzing', 'Itter', 'Jenbach', 'Judenstein', 'Kaltenbach', 'Kampl', 'Kappl', 'Karres', 'Kauns', 'Kematen', 'Kiefersfelden', 'Kirchberg in Tirol', 'Kirchbichl', 'Klagenfurt', 'Kolsass', 'Kossen', 'Kramsach', 'Krossbach', 'Kufstein', 'Kuhtai', 'Kundl', 'Ladis', 'Landeck', 'Lanersbach', 'Langen am Arlberg', 'Langenfeld', 'Lans', 'Leiblfing', 'Leithen', 'Lermoos', 'Leutasch', 'Lienz', 'Linz ', 'Ljubljana City Centre', 'Lofer', 'Lusens', 'Lustenau', 'Mathon', 'Matrei am Brenner', 'Matrei in Osttirol', 'Maurach', 'Merano', 'Mieders', 'Milders', 'Mils bei Imst', 'Mittenwald', 'Mittersill', 'Motz', 'Munich City Centre', 'Munster Tirol', 'Murnau', 'Mutters', 'Nassereth', 'Natters', 'Nauders', 'Navis', 'Neder', 'Neu Gotzens', 'Neustift', 'Oberammergau', 'Obergurgl', 'Oberhofen', 'Obermieming', 'Obernberg am Brenner', 'Oberperfuss', 'Obladis', 'Obsteig', 'Omes', 'Patsch', 'Pertisau', 'Pettnau', 'Pettnau am Arlberg', 'Pfaffenhofen', 'Pfons', 'Pfunds', 'Pians', 'Pill', 'Polling', 'Portoroz', 'Prutz', 'Radfeld', 'Ramsau im Zillertal', 'Ranggen', 'Rankweil', 'Rans', 'Rattenberg', 'Reith bei Seefeld', 'Reutte', 'Ried im Zillertal', 'Rietz', 'Rinn', 'Rosenheim', 'Rotholz', 'Rum', 'Salzburg City Centre', 'Sauttens', 'Schattwald', 'Schlitters', 'Schmirn', 'Schoenberg', 'Schonwies', 'Schwaz', 'See im Paznauntal', 'Seefeld in Tirol', 'Sellrain', 'Selva di Val Gardena', 'Serfaus', 'Sillian', 'Silz', 'Sistrans', 'Solden', 'Solden Tyrol', 'Soll', 'St Jakob am Arlberg', 'St Johann in Tirol', 'St Moritz', 'St Peter in Tirol', 'St Sigmund im Sellrain', 'Stams', 'Stans', 'Stanzach', 'Steeg', 'Steinach am Brenner', 'Sterzing', 'Strass im Zillertal', 'Strengen am Arlberg', 'Stubaier Gletscher', 'Stumm', 'Tannheim', 'Tarrenz', 'Tegernsee', 'Telfes', 'Telfs', 'Terfens', 'Thaur', 'Thiersee', 'Trento', 'Trin', 'Tulfes', 'Tumpen', 'Uderns', 'Umhausen', 'Untermieming', 'Vienna City Centre', 'Vomperberg', 'Waidring', 'Walchsee', 'Wattens', 'Weer', 'Wenns', 'Westendorf', 'Wiesing', 'Wildschonau Oberau', 'Worgl', 'Zams', 'Zell am See', 'Zell am Ziller', 'Zirl', 'Zurich City Centre', 'Zurs', 'Zwieselstein'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[89]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[90]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich Airport Hotel', 'Munich City Centre', 'Salzburg City Centre', 'Vienna City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[91]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[92]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[93]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[94]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[95]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[96]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[97]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[98]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[99]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[100]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[101]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[102]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[103]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[104]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[105]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Munich Airport Hotel', 'Munich City Centre', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[106]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[107]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[108]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[109]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[110]
    end

    ['Innsbruck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[111]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[112]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[113]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[114]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[115]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[116]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[117]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[118]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[119]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[120]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[121]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[122]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[123]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[124]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[125]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[126]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Memmingen Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Vienna City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[127]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[128]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[129]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[130]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[131]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Vienna City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[132]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[133]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[134]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[135]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[136]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[137]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[138]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Bern City Centre', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[139]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Vienna City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[140]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[141]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[142]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[143]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[144]
    end

    ['Munich Airport', 'Zurich Airport', 'Zurich Train Station', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[145]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[146]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[147]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[148]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[149]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[150]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[151]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[152]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[153]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[154]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[155]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[156]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[157]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[158]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[159]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[160]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[161]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[162]
    end

    ['Munich Airport', 'Zurich Airport', 'Zurich Train Station', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[163]
    end

    ['Munich Airport', 'Zurich Airport', 'Zurich Train Station', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[164]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[165]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[166]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[167]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[168]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[169]
    end

    ['Innsbruck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[170]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[171]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[172]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[173]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[174]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[175]
    end

    ['Basel Airport', 'Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[176]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[177]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[178]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[179]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[180]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[181]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[182]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[183]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[184]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[185]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[186]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[187]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[188]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[189]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[190]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[191]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[192]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[193]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[194]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[195]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[196]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[197]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[198]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[199]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[200]
    end

    ['Friedrichshafen Airport', 'Memmingen Airport', 'Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[201]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[202]
    end

    ['Innsbruck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[203]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[204]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[205]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[206]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[207]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[208]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[209]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Memmingen Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[210]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[211]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[212]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[213]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Vienna City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[214]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[215]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[216]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[217]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[218]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[219]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[220]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Vienna City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[221]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[222]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[223]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Geneva Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Munich Airport', 'Salzburg Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Vienna City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[224]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Munich Airport', 'Zurich Airport', 'Zurich Train Station', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[225]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Memmingen Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[226]
    end

    ['Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[227]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[228]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[229]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[230]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[231]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[232]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[233]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[234]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[235]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[236]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[237]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[238]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[239]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[240]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[241]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[242]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[243]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[244]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[245]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[246]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[247]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[248]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[249]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[250]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[251]
    end

    ['Basel Airport', 'Bern Airport', 'Munich Airport', 'Zurich Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[252]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[253]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[254]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[255]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[256]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[257]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[258]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[259]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[260]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[261]
    end

    ['Innsbruck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[262]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[263]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[264]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[265]
    end

    ['Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[266]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[267]
    end

    ['Basel Airport', 'Bern Airport', 'Innsbruck Airport', 'Salzburg Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[268]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[269]
    end

    ['Basel Airport', 'Bern Airport', 'Friedrichshafen Airport', 'Innsbruck Airport', 'Memmingen Airport', 'Munich Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[270]
    end

    ['Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[271]
    end

    puts 'Pick Up Locations for Friedrichshafen'
    pick_ups = City.find_by(name: 'Friedrichshafen').pick_up_locations.reorder('id asc')
    ['Bludenz', 'Bregenz', 'Chur', 'Dalaas', 'Davos', 'Dornbirn', 'Feldkirch', 'Galtur', 'Gotzis', 'Innsbruck City Centre', 'Interlaken', 'Ischgl', 'Langenfeld', 'Lech am Arlberg', 'Lustenau', 'Obergurgl', 'Sankt Leonhard im Pitztal', 'Schruns', 'Solden', 'St Anton am Arlberg', 'St Christoph am Arlberg', 'St Gallen', 'St Gallenkirch', 'St Jakob am Arlberg', 'St Moritz', 'Vaduz', 'Zurich City Centre', 'Zurs'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    puts 'Pick Up Locations for Izmir'
    pick_ups = City.find_by(name: 'Izmir').pick_up_locations.reorder('id asc')
    ['Milas Bodrum Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Milas Bodrum Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    puts 'Pick Up Locations for Birmingham'
    pick_ups = City.find_by(name: 'Birmingham').pick_up_locations.reorder('id asc')
    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Manchester Airport', 'Manchester Airport Hotel', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    puts 'Pick Up Locations for Saint Petersburg'
    pick_ups = City.find_by(name: 'Saint Petersburg').pick_up_locations.reorder('id asc')
    ['Saint Petersburg'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Pulkovo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    puts 'Pick Up Locations for Rijeka'
    pick_ups = City.find_by(name: 'Rijeka').pick_up_locations.reorder('id asc')
    ['Ljubljana Airport', 'Zagreb Airport', 'Ljubljana City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Belgrade Airport', 'Ljubljana Airport', 'Osijek Airport', 'Split Airport', 'Zadar Airport', 'Zagreb Airport', 'Ljubljana City Centre', 'Zadar City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    puts 'Pick Up Locations for Pula'
    pick_ups = City.find_by(name: 'Pula').pick_up_locations.reorder('id asc')

    ['Ljubljana Airport', 'Ljubljana City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Belgrade Airport', 'Ljubljana Airport', 'Olbia Airport', 'Osijek Airport', 'Split Airport', 'Vienna Airport', 'Zadar Airport', 'Zagreb Airport', 'Ljubljana City Centre', 'Vienna City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    puts 'Pick Up Locations for Bydgoszcz'
    pick_ups = City.find_by(name: 'Bydgoszcz').pick_up_locations.reorder('id asc')
    ['Gdansk City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Gdansk Airport', 'Modlin Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Gdansk City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    puts 'Pick Up Locations for Eindhoven'
    pick_ups = City.find_by(name: 'Eindhoven').pick_up_locations.reorder('id asc')
    ['Brussels Airport', 'Rotterdam Airport', 'Amsterdam Cruise Port', 'Rotterdam Cruise Port', 'Rotterdam Europoort', 'Amsterdam Train Station', 'Eindhoven', 'Almere', 'Alphen aan den Rijn', 'Amersfoort', 'Amstelveen', 'Amsterdam City Centre', 'Amsterdam Movenpick Hotel', 'Amsterdam North', 'Amsterdam Zeeburg', 'Antwerp City Centre', 'Apeldoorn', 'Arnhem', 'Assen', 'Bergen NL', 'Beverwijk', 'Breda', 'Bree', 'Breukelen', 'Brussels City Centre', 'Bussum', 'Capelle aan den IJssel', 'De Ruijterkade Oost', 'Delft', 'Deventer', 'Doorwerth', 'Dordrecht', 'Eemnes', 'Elst', 'Emmen', 'Enschede', 'Etten Leur', 'Gorinchem', 'Gorssel', 'Groningen', 'Haarlem', 'Harlingen', 'Heerlen', 'Helmond', 'Hengelo', 'Hilversum', 'Hoogeveen', 'Hoorn', 'Huizen', 'IJmuiden', 'Leeuwarden', 'Leiden', 'Lelystad', 'Lisse', 'Lommel', 'Loosdrecht', 'Maastricht', 'Muiden', 'Nijmegen', 'Noordwijk', 'Noordwijkerhout', 'Oegstgeest', 'Oss', 'Poortugaal', 'Purmerend', 'Rijnsburg', 'Rijswijk', 'Roosendaal', 'Rotterdam City Centre', 'Sittard', 'Sneek', 'Spier', 'Terneuzen', 'The Hague', 'Tiel', 'Tilburg', 'Uden', 'Utrecht', 'Venlo', 'Vianen', 'Vlaardingen', 'Vlissingen', 'Wassenaar', 'Weesp', 'Westpoort', 'Woerden', 'Woudsend', 'Zaandam', 'Zandvoort', 'Zeeburg', 'Zeist', 'Zoetermeer', 'Zwolle', 's Hertogenbosch'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Amsterdam Schiphol Airport', 'Brussels Airport', 'Charleroi Airport', 'Dusseldorf Airport', 'Eindhoven Airport', 'Rotterdam Airport', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    puts 'Pick Up Locations for Toulon'
    pick_ups = City.find_by(name: 'Toulon').pick_up_locations.reorder('id asc')
    ['Marseille Train Station', 'Marseille City Centre', 'Marseille Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Marseille Airport', 'Nice Airport', 'Aix en Provence', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    puts 'Pick Up Locations for Forli'
    pick_ups = City.find_by(name: 'Forli').pick_up_locations.reorder('id asc')
    ['Parma Airport', 'Pescara Airport', 'Rimini Airport', 'Civitavecchia Cruise Port', 'Livorno Cruise Port', 'Ravenna', 'Arezzo', 'Ascoli Piceno', 'Belluno', 'Bergamo City Centre', 'Brescia', 'Cremona', 'Faenza', 'Fermo', 'Ferrara', 'Florence City Centre', 'Genoa City Centre', 'La Spezia', 'Lodi', 'Lucca', 'Macerata', 'Mantova', 'Milan City Centre', 'Modena', 'Padova', 'Parma', 'Pavia', 'Perugia', 'Pesaro', 'Pescara City Centre', 'Piacenza', 'Pisa City Centre', 'Pistoia', 'Prato', 'Reggio Emilia', 'Rimini', 'Rome City Centre', 'Rovigo', 'Savona', 'Siena', 'Teramo', 'Terni', 'Trento', 'Treviso City Centre', 'Trieste City Centre', 'Venice Piazzale Roma', 'Verona City Centre', 'Vicenza'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Parma Airport', 'Pescara Airport', 'Rimini Airport', 'Civitavecchia Cruise Port', 'Livorno Cruise Port', 'Ravenna', 'Arezzo', 'Ascoli Piceno', 'Belluno', 'Bergamo City Centre', 'Brescia', 'Cremona', 'Faenza', 'Fermo', 'Ferrara', 'Florence City Centre', 'Genoa City Centre', 'La Spezia', 'Lodi', 'Lucca', 'Macerata', 'Mantova', 'Milan City Centre', 'Modena', 'Padova', 'Parma', 'Pavia', 'Perugia', 'Pesaro', 'Pescara City Centre', 'Piacenza', 'Pisa City Centre', 'Pistoia', 'Prato', 'Reggio Emilia', 'Rimini', 'Rome City Centre', 'Rovigo', 'Savona', 'Siena', 'Teramo', 'Terni', 'Trento', 'Treviso City Centre', 'Trieste City Centre', 'Venice Piazzale Roma', 'Verona City Centre', 'Vicenza'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Ravenna', 'Ancona', 'Bergamo City Centre', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    puts 'Pick Up Locations for Alexandria'
    pick_ups = City.find_by(name: 'Alexandria').pick_up_locations.reorder('id asc')
    ['Cairo Airport', 'Dabaa Alalamain Airport', 'Marsa Matrouh', 'Alexandria City Centre', 'Cairo City Centre', 'Dabaa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Alexandria Airport', 'Cairo Airport', 'Dabaa Alalamain Airport', 'Cairo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Alexandria Airport', 'Cairo Airport', 'Cairo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    puts 'Pick Up Locations for Taba'
    pick_ups = City.find_by(name: 'Taba').pick_up_locations.reorder('id asc')
    ['Nuweiba Port', 'Sinai Bay Club Med', 'Dahab', 'Nuweiba', 'Sharm El Sheikh Hotels', 'Taba'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Sharm El Sheikh Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Sharm El Sheikh Airport', 'Taba Airport', 'Nuweiba Port', 'Sharm El Sheikh Port', 'Dahab', 'Nuweiba', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    puts 'Pick Up Locations for Cologne'
    pick_ups = City.find_by(name: 'Cologne').pick_up_locations.reorder('id asc')
    ['Brussels Airport', 'Charleroi Airport', 'Cologne Bonn Airport', 'Dusseldorf Airport', 'Frankfurt Airport', 'Hahn Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Frankfurt Train Station', 'Brussels City Centre', 'Frankfurt City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Cologne Bonn Airport', 'Dusseldorf Airport', 'Frankfurt Airport', 'Hahn Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Frankfurt Train Station', 'Brussels City Centre', 'Frankfurt City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Cologne Bonn Airport', 'Dusseldorf Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    puts 'Pick Up Locations for Rimini'
    pick_ups = City.find_by(name: 'Rimini').pick_up_locations.reorder('id asc')
    ['Forli Airport', 'Livorno Cruise Port', 'Pesaro', 'Terni', 'Ancona', 'Arezzo', 'Ascoli Piceno', 'Bergamo City Centre', 'Brescia', 'Chieti', 'Cremona', 'Faenza', 'Fermo', 'Ferrara', 'Florence City Centre', 'Forli', 'La Spezia', 'Lodi', 'Lucca', 'Macerata', 'Mantova', 'Milan City Centre', 'Modena', 'Padova', 'Parma', 'Pavia', 'Pescara City Centre', 'Piacenza', 'Pisa City Centre', 'Pistoia', 'Prato', 'Ravenna', 'Reggio Emilia', 'Rome City Centre', 'Rovigo', 'Savona', 'Siena', 'Teramo', 'Treviso City Centre', 'Trieste City Centre', 'Turin City Centre', 'Venice Piazzale Roma', 'Verona City Centre', 'Vicenza'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Pesaro', 'Bergamo City Centre', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Bologna Airport', 'Forli Airport', 'Livorno Cruise Port', 'Pesaro', 'Terni', 'Ancona', 'Arezzo', 'Ascoli Piceno', 'Bergamo City Centre', 'Brescia', 'Chieti', 'Cremona', 'Faenza', 'Fermo', 'Ferrara', 'Florence City Centre', 'Forli', 'La Spezia', 'Lodi', 'Lucca', 'Macerata', 'Mantova', 'Milan City Centre', 'Modena', 'Padova', 'Parma', 'Pavia', 'Pescara City Centre', 'Piacenza', 'Pisa City Centre', 'Pistoia', 'Prato', 'Ravenna', 'Reggio Emilia', 'Rome City Centre', 'Rovigo', 'Savona', 'Siena', 'Teramo', 'Treviso City Centre', 'Trieste City Centre', 'Turin City Centre', 'Venice Piazzale Roma', 'Verona City Centre', 'Vicenza'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Forli Airport', 'Rimini Airport', 'Pesaro', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    puts 'Pick Up Locations for Moscow'
    pick_ups = City.find_by(name: 'Moscow').pick_up_locations.reorder('id asc')
    ['Moscow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Moscow Vnukovo Airport', 'Moscow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Moscow Sheremetyevo Airport', 'Moscow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Moscow Domodedovo Airport', 'Moscow Sheremetyevo Airport', 'Moscow Vnukovo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    puts 'Pick Up Locations for Bremen'
    pick_ups = City.find_by(name: 'Bremen').pick_up_locations.reorder('id asc')
    ['Bremen City Centre', 'Bremen Airport', 'Oldenburg', 'Hamburg City Centre', 'Hannover', 'Osnabruck'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Hamburg Airport', 'Hannover Airport', 'Bremen City Centre', 'Bremen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Hamburg Airport', 'Bremen City Centre', 'Bremen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Dusseldorf Airport', 'Bremen City Centre', 'Bremen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    puts 'Pick Up Locations for Aswan'
    pick_ups = City.find_by(name: 'Aswan').pick_up_locations.reorder('id asc')
    ['Luxor Airport', 'Marsa Alam Airport', 'Aswan Port', 'Luxor Port', 'Aswan', 'Abu Simbel', 'Luxor Hotels', 'Marsa Alam'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Aswan Airport', 'Luxor Airport', 'Aswan', 'Luxor Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Aswan Airport', 'Aswan'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Aswan Airport', 'Luxor Airport', 'Marsa Alam Airport', 'Aswan Port', 'Luxor Port', 'Aswan', 'Abu Simbel', 'Luxor Hotels', 'Marsa Alam'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    puts 'Pick Up Locations for Poznan'
    pick_ups = City.find_by(name: 'Poznan').pick_up_locations.reorder('id asc')
    ['Poznan City Centre', 'Buk', 'Czaplinek', 'Konin'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Poznan Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Poznan Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Gdansk Airport', 'Modlin Airport', 'Poznan Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Gdansk City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    puts 'Pick Up Locations for Perpignan'
    pick_ups = City.find_by(name: 'Perpignan').pick_up_locations.reorder('id asc')
    ['Pau Airport', 'Toulouse Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Toulouse Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Girona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    puts 'Pick Up Locations for Portoroz'
    pick_ups = City.find_by(name: 'Portoroz').pick_up_locations.reorder('id asc')
    ['Ljubljana Airport', 'Ljubljana City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Ljubljana Airport', 'Ljubljana City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Ljubljana Airport', 'Ljubljana City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Ljubljana Airport', 'Split Airport', 'Treviso Airport', 'Venice Airport', 'Zadar Airport', 'Zagreb Airport', 'Baden', 'Baska Voda', 'Biograd', 'Bled', 'Bohinj', 'Bovec', 'Bregenz', 'Brezice', 'Brodarica', 'Cateske Toplice', 'Celje', 'Crikvenica', 'Crnomelj', 'Domzale', 'Dravograd', 'Dubrovnik City Centre', 'Feldkirch', 'Gorizia', 'Gornja Radgona', 'Graz', 'Grosuplje', 'Idrija', 'Innsbruck City Centre', 'Jesenice', 'Kamnik', 'Klagenfurt City Centre', 'Kocevje', 'Kostanjevica na Krki', 'Kranj', 'Kranjska Gora', 'Krk', 'Krsko', 'Lasko', 'Lenart', 'Lendava', 'Litija', 'Ljubljana City Centre', 'Ljutomer', 'Logatec', 'Makarska', 'Mali Losinj', 'Maria Worth', 'Maribor', 'Medvode', 'Menges', 'Metlika', 'Mezica', 'Modena', 'Murska Sobota', 'Murter', 'Nova Gorica', 'Novo Mesto', 'Ormoz', 'Osijek City Centre', 'Pag', 'Plitvice Lakes', 'Ptuj', 'Radece', 'Radovljica', 'Ravne na Koroskem', 'Rogaska Slatina', 'Salzburg City Centre', 'Sempeter pri Gorici', 'Senj', 'Sentjur', 'Sevnica', 'Sibenik', 'Skofja Loka', 'Slovenj Gradec', 'Slovenska Bistrica', 'Slovenske Konjice', 'Sostanj', 'Split City Centre', 'St Polten', 'Tolmin', 'Trbovlje', 'Trebnje', 'Treviso City Centre', 'Trogir', 'Trzic', 'Udine', 'Velenje', 'Venice Piazzale Roma', 'Vienna City Centre', 'Villach', 'Visnja Gora', 'Vrhnika', 'Zadar City Centre', 'Zagorje ob Savi', 'Zagreb City Centre', 'Zalec', 'Zelezniki', 'Ziri'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    puts 'Pick Up Locations for Cannes'
    pick_ups = City.find_by(name: 'Cannes').pick_up_locations.reorder('id asc')
    ['Nice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bergamo Airport', 'Marseille Airport', 'Nice Airport', 'Marseille City Centre', 'Nice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Nice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Nice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    puts 'Pick Up Locations for Katowice'
    pick_ups = City.find_by(name: 'Katowice').pick_up_locations.reorder('id asc')
    ['Warsaw Airport', 'Wroclaw Airport', 'Czestochowa', 'Banska Bystrica', 'Bedrichov', 'Benecko', 'Bialka Tatrzanska', 'Biele Vody nad Hrinova', 'Bielsko Biala', 'Bila', 'Bochnia', 'Brzesko', 'Budapest City Centre', 'Bukowina Tatrzanska', 'Celadna', 'Cenkovice', 'Cervenohorske Sedlo', 'Chocholow', 'Cieszyn', 'Czarna Gora', 'Dubovica Zliabky', 'Gliczarow Gorny', 'Harrachov', 'High Tatras', 'Janske Lazne', 'Jurgow', 'Karpacz', 'Kielce', 'Korbielow', 'Korenov', 'Koscielisko', 'Krakow City Centre', 'Krakow Nowa Huta', 'Krompachy', 'Krosno', 'Krynica', 'Kubinska Hola', 'Lanov', 'Liptovska Teplicka', 'Liptovske Jan', 'Lodz', 'Lublin', 'Lubochna', 'Makov', 'Mala Moravka', 'Mala Upa', 'Male Ciche', 'Martinske Hole', 'Medvedin', 'Mlynky', 'Murzasichle', 'Myto pod Dumbierom', 'Niepolomice', 'Nowy Sacz', 'Opole', 'Oscadnica', 'Ostruzna', 'Paseky nad Jizerou', 'Pec pod Snezkou', 'Plejsy', 'Podbanske', 'Podhale', 'Poprad', 'Poronin', 'Poruba', 'Przemysl', 'Rabka', 'Rackova Dolina', 'Radom', 'Regetovka', 'Rokytnice nad Jizerou', 'Rzeszow', 'Sanok', 'Semily', 'Severak', 'Siepraw', 'Skalite Serafinov', 'Spindleruv Mlyn', 'Stary Smokovec', 'Strazne', 'Svetla pod Jestedem', 'Svit', 'Svoboda nad Upou', 'Szczyrk', 'Tarnow', 'Telgart', 'Teplica', 'Trojanovice', 'Turany', 'Turcianske Klacany', 'Utekac', 'Velka Raca', 'Vernar', 'Vitkovice', 'Vratna', 'Vrbno pod Pradedem', 'Vrchlabi', 'Vrutky', 'Vysne Ruzbachy', 'Warsaw City Centre', 'Wisla', 'Witow', 'Wroclaw City Centre', 'Zakopane', 'Zavada', 'Zawoja', 'Zdiar', 'Zdobnice', 'Zielona Gora'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Gdansk Airport', 'Katowice Airport', 'Krakow Balice Airport', 'Modlin Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Czestochowa', 'Gdansk City Centre', 'Katowice City Centre', 'Krakow City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Krakow Balice Airport', 'Krakow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bratislava Airport', 'Gdansk Airport', 'Krakow Balice Airport', 'Vienna Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Czestochowa', 'Banska Bystrica', 'Bedrichov', 'Benecko', 'Bialka Tatrzanska', 'Biele Vody nad Hrinova', 'Bielsko Biala', 'Bila', 'Bochnia', 'Brzesko', 'Budapest City Centre', 'Bukowina Tatrzanska', 'Celadna', 'Cenkovice', 'Cervenohorske Sedlo', 'Chocholow', 'Cieszyn', 'Czarna Gora', 'Dubovica Zliabky', 'Gdansk City Centre', 'Gliczarow Gorny', 'Harrachov', 'High Tatras', 'Janske Lazne', 'Jurgow', 'Karpacz', 'Kielce', 'Korbielow', 'Korenov', 'Koscielisko', 'Krakow City Centre', 'Krakow Nowa Huta', 'Krompachy', 'Krosno', 'Krynica', 'Kubinska Hola', 'Lanov', 'Liptovska Teplicka', 'Liptovske Jan', 'Lodz', 'Lublin', 'Lubochna', 'Makov', 'Mala Moravka', 'Mala Upa', 'Male Ciche', 'Martinske Hole', 'Medvedin', 'Mlynky', 'Murzasichle', 'Myto pod Dumbierom', 'Niepolomice', 'Nowy Sacz', 'Opole', 'Oscadnica', 'Ostruzna', 'Paseky nad Jizerou', 'Pec pod Snezkou', 'Plejsy', 'Podbanske', 'Podhale', 'Poprad', 'Poronin', 'Poruba', 'Przemysl', 'Rabka', 'Rackova Dolina', 'Radom', 'Regetovka', 'Rokytnice nad Jizerou', 'Rzeszow', 'Sanok', 'Semily', 'Severak', 'Siepraw', 'Skalite Serafinov', 'Spindleruv Mlyn', 'Stary Smokovec', 'Strazne', 'Svetla pod Jestedem', 'Svit', 'Svoboda nad Upou', 'Szczyrk', 'Tarnow', 'Telgart', 'Teplica', 'Trojanovice', 'Turany', 'Turcianske Klacany', 'Utekac', 'Velka Raca', 'Vernar', 'Vienna City Centre', 'Vitkovice', 'Vratna', 'Vrbno pod Pradedem', 'Vrchlabi', 'Vrutky', 'Vysne Ruzbachy', 'Warsaw City Centre', 'Wisla', 'Witow', 'Wroclaw City Centre', 'Zakopane', 'Zavada', 'Zawoja', 'Zdiar', 'Zdobnice'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Krakow Balice Airport', 'Krakow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    puts 'Pick Up Locations for Brescia'
    pick_ups = City.find_by(name: 'Brescia').pick_up_locations.reorder('id asc')
    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Livigno', 'Milan City Centre', 'St Moritz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Livigno', 'Milan City Centre', 'St Moritz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    puts 'Pick Up Locations for Ancona'
    pick_ups = City.find_by(name: 'Ancona').pick_up_locations.reorder('id asc')
    ['Bologna Airport', 'Parma Airport', 'Pisa Airport', 'Livorno Cruise Port', 'Bergamo City Centre', 'Bologna City Centre', 'Brescia', 'Cremona', 'Faenza', 'Ferrara', 'Florence City Centre', 'La Spezia', 'Lodi', 'Lucca', 'Mantova', 'Milan City Centre', 'Modena', 'Padova', 'Parma', 'Pavia', 'Piacenza', 'Pisa City Centre', 'Pistoia', 'Pordenone', 'Prato', 'Ravenna', 'Reggio Emilia', 'Rovigo', 'Sondrio', 'Trento', 'Treviso City Centre', 'Venice Piazzale Roma', 'Verona City Centre', 'Vicenza'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bologna Airport', 'Parma Airport', 'Pisa Airport', 'Rimini Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Livorno Cruise Port', 'Bergamo City Centre', 'Bologna City Centre', 'Brescia', 'Cremona', 'Faenza', 'Ferrara', 'Florence City Centre', 'La Spezia', 'Lodi', 'Lucca', 'Mantova', 'Milan City Centre', 'Modena', 'Padova', 'Parma', 'Pavia', 'Piacenza', 'Pisa City Centre', 'Pistoia', 'Pordenone', 'Prato', 'Ravenna', 'Reggio Emilia', 'Rimini', 'Rome City Centre', 'Rovigo', 'Sondrio', 'Trento', 'Treviso City Centre', 'Venice Piazzale Roma', 'Verona City Centre', 'Vicenza'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Forli Airport', 'Rimini Airport', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    puts 'Pick Up Locations for Bruges'
    pick_ups = City.find_by(name: 'Bruges').pick_up_locations.reorder('id asc')
    ['Bruges City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Brussels Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Midi Train Station', 'Bruges City Centre', 'Zeebruges', 'Brussels City Centre', 'Sluis'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Amsterdam Schiphol Airport', 'Bruges Airport', 'Brussels Airport', 'Charleroi Airport', 'Paris Charles de Gaulle Airport', 'Bruges Train Station', 'Brussels Midi Train Station', 'Bruges City Centre', 'Amsterdam City Centre', 'Antwerp City Centre', 'Brussels City Centre', 'Calais', 'Diksmuide', 'Ghent', 'Lille Airport', 'Lille City Centre', 'Paris City Centre', 'Tilburg', 'Zeebruges'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Brussels Airport', 'Bruges Train Station', 'Brussels Midi Train Station', 'Bruges City Centre', 'Bruges City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

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

    puts 'Pick Up Locations for Dabaa'
    pick_ups = City.find_by(name: 'Dabaa').pick_up_locations.reorder('id asc')
    ['Alexandria Airport', 'Dabaa', 'Porto Marina El Alameen', 'Borg Al Arab', 'Matrouh', 'Alexandria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Dabaa Alalamain Airport', 'Dabaa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Alexandria Airport', 'Dabaa Alalamain Airport', 'Dabaa', 'Porto Marina El Alameen', 'Borg Al Arab', 'Matrouh'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Dabaa Alalamain Airport', 'Dabaa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Dabaa Alalamain Airport', 'Dabaa', 'Dabaa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    puts 'Pick Up Locations for Trieste'
    pick_ups = City.find_by(name: 'Trieste').pick_up_locations.reorder('id asc')
    ['Ljubljana Airport', 'Venice Airport', 'Zagreb Airport', 'Bled', 'Kotschach Mauthen', 'Ljubljana City Centre', 'Nassfeld', 'Porec', 'Rovinj'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Bologna Airport', 'Ljubljana Airport', 'Bled', 'Bologna City Centre', 'Ljubljana City Centre', 'Portoroz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Ljubljana Airport', 'Rimini Airport', 'Treviso Airport', 'Verona Airport', 'Bled', 'Bologna City Centre', 'Forli', 'Jesenice', 'Ljubljana City Centre', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Ljubljana Airport', 'Treviso Airport', 'Venice Airport', 'Bled', 'Bologna City Centre', 'Ljubljana City Centre', 'Portoroz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    puts 'Pick Up Locations for Osijek'
    pick_ups = City.find_by(name: 'Osijek').pick_up_locations.reorder('id asc')
    ['Slavonski Brod', 'Osijek City Centre', 'Vinkovci', 'Vukovar', 'Bjelovar', 'Budapest City Centre', 'Cakovec', 'Dakovo', 'Daruvar', 'Dubrovnik City Centre', 'Karlovac', 'Ljubljana City Centre', 'Makarska', 'Maribor', 'Opatija', 'Pecs', 'Porec', 'Pula', 'Rijeka City Centre', 'Rovinj', 'Sibenik', 'Siofok', 'Sisak', 'Split City Centre', 'Umag', 'Varazdin', 'Virovitica', 'Zadar City Centre', 'Zagreb City Centre', 'Zupanja'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Belgrade Airport', 'Dubrovnik Airport', 'Ljubljana Airport', 'Zagreb Airport', 'Bled', 'Ljubljana City Centre', 'Portoroz', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Osijek Airport', 'Zagreb Airport', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Osijek Airport', 'Zagreb Airport', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Belgrade Airport', 'Osijek Airport', 'Zagreb Airport', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Osijek Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    puts 'Pick Up Locations for Dalaman'
    pick_ups = City.find_by(name: 'Dalaman').pick_up_locations.reorder('id asc')
    ['Marmaris Port', 'Turunc', 'Fethiye', 'Oludeniz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Marmaris Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Marmaris Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Marmaris Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Antalya Airport', 'Dalaman Airport', 'Marmaris Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Marmaris Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Marmaris Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    puts 'Pick Up Locations for Tarbes'
    pick_ups = City.find_by(name: 'Tarbes').pick_up_locations.reorder('id asc')
    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Biarritz Airport', 'Bilbao Airport', 'Bordeaux Airport', 'Pau Airport', 'Toulouse Airport', 'Bordeaux Train Station', 'Biarritz', 'Bilbao City Centre', 'Bordeaux City Centre', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Pau Airport', 'Toulouse Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Pau Airport', 'Toulouse Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    puts 'Pick Up Locations for Riga'
    pick_ups = City.find_by(name: 'Riga').pick_up_locations.reorder('id asc')
    ['Riga City Centre', 'Jurmala', 'Sigulda', 'Tukums', 'Cesis', 'Valmiera', 'Kuldiga', 'Liepaja', 'Radviliskis', 'Smiltene', 'Ventspils'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    puts 'Pick Up Locations for Naxos'
    pick_ups = City.find_by(name: 'Naxos').pick_up_locations.reorder('id asc')
    ['Naxos City Centre', 'Naxos Ferry Port', 'Agios Georgios', 'Agios Prokopios', 'Agia Anna', 'Plaka', 'Stelida'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Naxos Airport', 'Naxos City Centre', 'Naxos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Naxos Airport', 'Naxos City Centre', 'Naxos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Naxos Airport', 'Naxos City Centre', 'Naxos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Naxos Airport', 'Naxos City Centre', 'Naxos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Naxos Airport', 'Naxos City Centre', 'Naxos Ferry Port', 'Agios Georgios', 'Agios Prokopios', 'Agia Anna', 'Plaka', 'Stelida'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Naxos Airport', 'Naxos City Centre', 'Naxos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Naxos Airport', 'Naxos City Centre', 'Naxos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    puts 'Pick Up Locations for Liepaja'
    pick_ups = City.find_by(name: 'Liepaja').pick_up_locations.reorder('id asc')
    ['Kuldiga', 'Ventspils', 'Liepaja', 'Talsi', 'Skrunda', 'Jelgava', 'Aizpute', 'Durbe'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Liepaja Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Liepaja Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Liepaja Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Liepaja Airport', 'Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Liepaja Airport', 'Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Liepaja Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Liepaja Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Liepaja Airport', 'Riga Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    puts 'Pick Up Locations for Trapani'
    pick_ups = City.find_by(name: 'Trapani').pick_up_locations.reorder('id asc')
    ['Sciacca', 'Trapani', 'Mazara del Vallo', 'Erice', 'Marsala', 'Acireale', 'Agrigento', 'Augusta', 'Avola', 'Bagheria', 'Caccamo', 'Caltagirone', 'Caltanissetta', 'Campofelice di Roccella', 'Castelbuono', 'Casteldaccia', 'Catania City Centre', 'Cefalu', 'Corleone', 'Enna', 'Gangi', 'Gela', 'Giarre', 'Gibellina', 'Gioiosa Marea', 'Lercara Friddi', 'Licata', 'Messina', 'Milazzo', 'Modica', 'Monreale', 'Nicosia IT', 'Noto', 'Petralia Sottana', 'Piana degli Albanesi', 'Piazza Armerina', 'Pollina', 'Porto Empedocle', 'Portorosa', 'Prizzi', 'Ragusa', 'San Giuseppe Jato', 'San Vito lo Capo', 'Sant Agata di Militello', 'Santa Flavia', 'Selinunte', 'Siracusa', 'Taormina', 'Termini Imerese', 'Terrasini', 'Trabia', 'Vittoria'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Catania Airport', 'Palermo Airport', 'Trapani Airport', 'Catania Port', 'Catania City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Palermo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Catania Airport', 'Palermo Airport', 'Trapani Airport', 'Catania Port', 'Catania City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Catania Airport', 'Palermo Airport', 'Trapani Airport', 'Catania Port', 'Catania City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    puts 'Pick Up Locations for Cairo'
    pick_ups = City.find_by(name: 'Cairo').pick_up_locations.reorder('id asc')
    ['Alexandria Airport', 'Hurghada Airport', 'Luxor Airport', 'Hurghada Port', 'Luxor Port', 'Cairo City Centre', 'Heliopolis', 'Giza Hotels', 'Ain El Sukhna', 'El Alamein', 'El Minia', 'Alexandria City Centre', 'Hurghada Hotels', 'Luxor Hotels', 'Marsa Matrouh', 'Pyramids', 'Sharm El Sheikh Hotels', 'Zafarana'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Cairo Airport', 'Cairo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Alexandria Airport', 'Cairo Airport', 'Hurghada Airport', 'Luxor Airport', 'Hurghada Port', 'Luxor Port', 'Cairo City Centre', 'Heliopolis', 'Giza Hotels', 'Ain El Sukhna', 'El Alamein', 'Alexandria City Centre', 'El Minia', 'Hurghada Hotels', 'Luxor Hotels', 'Marsa Matrouh', 'Pyramids', 'Sharm El Sheikh Hotels', 'Zafarana'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Cairo Airport', 'Cairo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Cairo Airport', 'Cairo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Cairo Airport', 'Cairo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Cairo Airport', 'Cairo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Cairo Airport', 'Cairo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Cairo Airport', 'Hurghada Airport', 'Hurghada Port', 'Cairo City Centre', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    puts 'Pick Up Locations for Leipzig'
    pick_ups = City.find_by(name: 'Leipzig').pick_up_locations.reorder('id asc')
    ['Leipzig', 'Dresden', 'Halle Salle', 'Dessau', 'Gera', 'Jena', 'Bitterfeld', 'Chemnitz', 'Magdeburg'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Leipzig Halle Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Leipzig Halle Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Leipzig Halle Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Berlin Brandenburg Airport', 'Berlin Schonefeld Airport', 'Berlin Tegel Airport', 'Gdansk Airport', 'Leipzig Halle Airport', 'Wroclaw Airport', 'Gdansk City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Leipzig Halle Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Leipzig Halle Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Leipzig Halle Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Berlin Brandenburg Airport', 'Berlin Schonefeld Airport', 'Berlin Tegel Airport', 'Leipzig Halle Airport', 'Wroclaw Airport', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    puts 'Pick Up Locations for Rotterdam'
    pick_ups = City.find_by(name: 'Rotterdam').pick_up_locations.reorder('id asc')
    ['Amsterdam Schiphol Airport', 'Brussels Airport', 'Charleroi Airport', 'Eindhoven Airport', 'Amsterdam Cruise Port', 'Rotterdam Cruise Port', 'Rotterdam Europoort', 'Amsterdam Train Station', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Rotterdam City Centre', 'Sluis', 'Rotterdam Hotel', 'Capelle aan den IJssel', 'Almere', 'Alphen aan den Rijn', 'Amersfoort', 'Amstelveen', 'Amsterdam City Centre', 'Amsterdam Movenpick Hotel', 'Amsterdam North', 'Amsterdam Zeeburg', 'Antwerp City Centre', 'Apeldoorn', 'Arnhem', 'Assen', 'Bergen NL', 'Beverwijk', 'Breda', 'Breukelen', 'Brussels City Centre', 'Bussum', 'De Ruijterkade Oost', 'Delft', 'Deventer', 'Doorwerth', 'Dordrecht', 'Eemnes', 'Eindhoven', 'Elst', 'Emmen', 'Enschede', 'Etten Leur', 'Gorinchem', 'Gorssel', 'Groningen', 'Haarlem', 'Harlingen', 'Heerlen', 'Helmond', 'Hengelo', 'Hilversum', 'Hoogeveen', 'Hoorn', 'Huizen', 'IJmuiden', 'Leeuwarden', 'Leiden', 'Lelystad', 'Lisse', 'Loosdrecht', 'Maastricht', 'Muiden', 'Nijmegen', 'Noordwijk', 'Noordwijkerhout', 'Oegstgeest', 'Oss', 'Poortugaal', 'Purmerend', 'Rijnsburg', 'Rijswijk', 'Roosendaal', 'Sittard', 'Sneek', 'Spier', 'Terneuzen', 'The Hague', 'Tiel', 'Tilburg', 'Uden', 'Utrecht', 'Venlo', 'Vianen', 'Vlaardingen', 'Vlissingen', 'Wassenaar', 'Weesp', 'Westpoort', 'Woerden', 'Woudsend', 'Zaandam', 'Zandvoort', 'Zeeburg', 'Zeist', 'Zoetermeer', 'Zwolle', 's Hertogenbosch'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Amsterdam Schiphol Airport', 'Eindhoven Airport', 'Rotterdam Airport', 'Amsterdam City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Amsterdam Schiphol Airport', 'Eindhoven Airport', 'Rotterdam Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Amsterdam Schiphol Airport', 'Eindhoven Airport', 'Rotterdam Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Amsterdam Schiphol Airport', 'Eindhoven Airport', 'Rotterdam Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Amsterdam Schiphol Airport', 'Eindhoven Airport', 'Rotterdam Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Amsterdam Schiphol Airport', 'Brussels Airport', 'Charleroi Airport', 'Eindhoven Airport', 'Rotterdam Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Bruges Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Amsterdam Schiphol Airport', 'Eindhoven Airport', 'Rotterdam Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Amsterdam City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    puts 'Pick Up Locations for Bologna'
    pick_ups = City.find_by(name: 'Bologna').pick_up_locations.reorder('id asc')
    ['Ancona Airport', 'Florence Airport', 'Parma Airport', 'Pisa Airport', 'Treviso Airport', 'Civitavecchia Cruise Port', 'Livorno Cruise Port', 'Venice Cruise Port', 'Bologna City Centre', 'Parma', 'Lizzano in Belvedere', 'Faenza', 'Cattolica', 'Alessandria', 'Ancona', 'Arezzo', 'Asti', 'Belluno', 'Bergamo City Centre', 'Biella', 'Bolzano', 'Brescia', 'Carrara', 'Castiglioncello', 'Castrocaro Terme', 'Como Town', 'Cortina d Ampezzo', 'Cremona', 'Fermo', 'Ferrara', 'Figline Valdarno', 'Florence City Centre', 'Forte dei Marmi', 'Genoa City Centre', 'Gorizia', 'Grosseto', 'La Spezia', 'Lecco', 'Lodi', 'Lucca', 'Macerata', 'Mantova', 'Milan City Centre', 'Milano Marittima', 'Modena', 'Montecchio Emilia', 'Monza', 'Novara', 'Padova', 'Pavia', 'Perugia', 'Pesaro', 'Pescara City Centre', 'Piacenza', 'Pietrasanta', 'Pisa City Centre', 'Pistoia', 'Pordenone', 'Prato', 'Radda in Chianti', 'Ravenna', 'Reggio Emilia', 'Riccione', 'Rimini', 'Rome City Centre', 'Rovigo', 'Sansepolcro', 'Savona', 'Siena', 'Sondrio', 'Teramo', 'Trento', 'Treviso City Centre', 'Trieste City Centre', 'Turin City Centre', 'Udine', 'Varese', 'Venice Piazzale Roma', 'Vercelli', 'Verona City Centre', 'Vicenza'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Ancona Airport', 'Bologna Airport', 'Forli Airport', 'Bologna City Centre', 'Ancona', 'Forli'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Parma Airport', 'Pisa Airport', 'Treviso Airport', 'Civitavecchia Cruise Port', 'Livorno Cruise Port', 'Milan Train Station', 'Bologna City Centre', 'Parma', 'Alessandria', 'Ancona', 'Arezzo', 'Asti', 'Bardolino', 'Belluno', 'Bergamo City Centre', 'Biella', 'Bolzano', 'Brescia', 'Carrara', 'Como Town', 'Cremona', 'Faenza', 'Fermo', 'Ferrara', 'Florence City Centre', 'Garda', 'Genoa City Centre', 'Gorizia', 'Grosseto', 'La Spezia', 'Lecco', 'Lodi', 'Lucca', 'Macerata', 'Mantova', 'Milan City Centre', 'Modena', 'Monza', 'Novara', 'Padova', 'Pavia', 'Perugia', 'Pesaro', 'Pescara City Centre', 'Piacenza', 'Pisa City Centre', 'Pistoia', 'Pordenone', 'Prato', 'Ravenna', 'Reggio Emilia', 'Rome City Centre', 'Rovigo', 'Savona', 'Siena', 'Sondrio', 'Teramo', 'Trento', 'Treviso City Centre', 'Trieste City Centre', 'Turin City Centre', 'Udine', 'Varese', 'Venice Piazzale Roma', 'Vercelli', 'Vicenza'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bologna Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bologna Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Ancona Airport', 'Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Bologna City Centre', 'Ancona', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Bologna Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Milan Train Station', 'Bologna City Centre', 'Ancona', 'Forli', 'Milan City Centre', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Bologna Airport', 'Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    puts 'Pick Up Locations for Tallinn'
    pick_ups = City.find_by(name: 'Tallinn').pick_up_locations.reorder('id asc')
    ['Tallinn City Centre', 'Haapsalu', 'Parnu', 'Narva', 'Keila', 'Paldiski', 'Kehtna', 'Marjamaa', 'Otepaa', 'Tartu', 'Viljandi'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Tallinn Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Tallinn Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Tallinn Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Tallinn Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Tallinn Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Tallinn Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Tallinn Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Tallinn Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Tallinn Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    puts 'Pick Up Locations for Kos'
    pick_ups = City.find_by(name: 'Kos').pick_up_locations.reorder('id asc')
    ['Agios Fokas', 'Kos Ferry Port', 'Psalidi', 'Marmari', 'Kos City Centre', 'Kefalos', 'Kardamena', 'Lambi', 'Mastichari', 'Tigaki'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port', 'Psalidi', 'Marmari', 'Kos City Centre', 'Kardamena', 'Kefalos', 'Lambi', 'Mastichari', 'Tigaki'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Kos Airport', 'Agios Fokas', 'Kos Ferry Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    puts 'Pick Up Locations for Alghero'
    pick_ups = City.find_by(name: 'Alghero').pick_up_locations.reorder('id asc')
    ['Olbia Airport', 'Alghero City Centre', 'Castelsardo', 'Porto Torres', 'Cannigione'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Alghero Airport', 'Cagliari Airport', 'Olbia Airport', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Alghero Airport', 'Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Alghero Airport', 'Cagliari Airport', 'Olbia Airport', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    puts 'Pick Up Locations for Wroclaw'
    pick_ups = City.find_by(name: 'Wroclaw').pick_up_locations.reorder('id asc')
    ['Katowice Airport', 'Warsaw Airport', 'Wroclaw City Centre', 'Opole', 'Szklarska Poreba', 'Kudowa Zdroj', 'Banska Bystrica', 'Bedrichov', 'Benecko', 'Berlin City Centre', 'Biele Vody nad Hrinova', 'Bila', 'Bratislava City Centre', 'Brno', 'Brusno', 'Budapest City Centre', 'Bukovina', 'Bydgoszcz', 'Bystricka', 'Celadna', 'Cenkovice', 'Cerny Dul', 'Certovica', 'Cervenohorske Sedlo', 'Czarna Gora', 'Czestochowa', 'Dresden', 'Drienica', 'Dubovica Zliabky', 'Fackov', 'Fackovske Sedlo', 'Gdansk City Centre', 'Gdynia', 'Gizycko', 'Gliczarow Gorny', 'Gubalowka', 'Harrachov', 'High Tatras', 'Janske Lazne', 'Jasenska Dolina', 'Jelenia Gora', 'Kalisz', 'Karlova Studanka', 'Katowice City Centre', 'Kokava nad Rimavicou', 'Kolobrzeg', 'Korenov', 'Koszalin', 'Krakow City Centre', 'Kraliky', 'Krompachy', 'Kubinska Hola', 'Lanov', 'Leipzig', 'Limanowa', 'Liptovska Teplicka', 'Liptovske Jan', 'Lodz', 'Loucna', 'Lublin', 'Lubochna', 'Makov', 'Mala Lucivna', 'Mala Moravka', 'Mala Upa', 'Martinske Hole', 'Medvedin', 'Misecky Horni', 'Mlynky', 'Myto pod Dumbierom', 'Niemodlin', 'Nosal', 'Olsztyn', 'Oscadnica', 'Ostrava', 'Ostruzna', 'Paseky nad Jizerou', 'Pec pod Snezkou', 'Pezinska Baba', 'Pilsko', 'Plejsy', 'Podbanske', 'Polkowice', 'Poruba', 'Poznan City Centre', 'Prague City Centre', 'Rabka', 'Ramzova', 'Regetovka', 'Rohace', 'Rokytnice nad Jizerou', 'Rzeszow', 'Sanok', 'Semily', 'Severak', 'Skalite Serafinov', 'Skalka', 'Spindleruv Mlyn', 'Stare Mesto', 'Stary Smokovec', 'Strazne', 'Stribrna', 'Svetla pod Jestedem', 'Svit', 'Svoboda nad Upou', 'Swinoujscie', 'Szczyrk', 'Telgart', 'Teplica', 'Torun', 'Trojanovice', 'Turany', 'Turcianske Klacany', 'Turecka', 'Utekac', 'Vernar', 'Vienna City Centre', 'Vitkovice', 'Vratna', 'Vrbno pod Pradedem', 'Vrchlabi', 'Vrutky', 'Vysne Ruzbachy', 'Warsaw City Centre', 'Zakopane', 'Zamosc', 'Zavada', 'Zawoja', 'Zdiar', 'Zdobnice'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Wroclaw Airport', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Katowice City Centre', 'Krakow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Wroclaw Airport', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Wroclaw Airport', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Wroclaw Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Modlin Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Wroclaw City Centre', 'Katowice City Centre', 'Krakow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Wroclaw Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Krakow Balice Airport', 'Wroclaw Airport', 'Wroclaw City Centre', 'Krakow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Katowice City Centre', 'Krakow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Gdansk Airport', 'Katowice Airport', 'Krakow Balice Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Wroclaw City Centre', 'Opole', 'Szklarska Poreba', 'Banska Bystrica', 'Bedrichov', 'Benecko', 'Berlin City Centre', 'Biele Vody nad Hrinova', 'Bila', 'Bratislava City Centre', 'Brno', 'Brusno', 'Budapest City Centre', 'Bukovina', 'Bydgoszcz', 'Bystricka', 'Celadna', 'Cenkovice', 'Cerny Dul', 'Certovica', 'Cervenohorske Sedlo', 'Czarna Gora', 'Czestochowa', 'Dresden', 'Drienica', 'Dubovica Zliabky', 'Fackov', 'Fackovske Sedlo', 'Gdansk City Centre', 'Gdynia', 'Gizycko', 'Gliczarow Gorny', 'Gubalowka', 'Harrachov', 'High Tatras', 'Janske Lazne', 'Jasenska Dolina', 'Jelenia Gora', 'Karlova Studanka', 'Katowice City Centre', 'Kokava nad Rimavicou', 'Kolobrzeg', 'Korenov', 'Koszalin', 'Krakow City Centre', 'Kraliky', 'Krompachy', 'Kubinska Hola', 'Kudowa Zdroj', 'Lanov', 'Leipzig', 'Limanowa', 'Liptovska Teplicka', 'Liptovske Jan', 'Lodz', 'Loucna', 'Lublin', 'Lubochna', 'Makov', 'Mala Lucivna', 'Mala Moravka', 'Mala Upa', 'Martinske Hole', 'Medvedin', 'Misecky Horni', 'Mlynky', 'Myto pod Dumbierom', 'Nosal', 'Olsztyn', 'Oscadnica', 'Ostrava', 'Ostruzna', 'Paseky nad Jizerou', 'Pec pod Snezkou', 'Pezinska Baba', 'Pilsko', 'Plejsy', 'Podbanske', 'Poruba', 'Poznan City Centre', 'Prague City Centre', 'Rabka', 'Ramzova', 'Regetovka', 'Rohace', 'Rokytnice nad Jizerou', 'Rzeszow', 'Sanok', 'Semily', 'Severak', 'Skalite Serafinov', 'Skalka', 'Spindleruv Mlyn', 'Stare Mesto', 'Stary Smokovec', 'Strazne', 'Stribrna', 'Svetla pod Jestedem', 'Svit', 'Svoboda nad Upou', 'Swinoujscie', 'Szczyrk', 'Telgart', 'Teplica', 'Torun', 'Trojanovice', 'Turany', 'Turcianske Klacany', 'Turecka', 'Utekac', 'Vernar', 'Vienna City Centre', 'Vitkovice', 'Vratna', 'Vrbno pod Pradedem', 'Vrchlabi', 'Vrutky', 'Vysne Ruzbachy', 'Warsaw City Centre', 'Zakopane', 'Zamosc', 'Zavada', 'Zawoja', 'Zdiar', 'Zdobnice'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Gdansk Airport', 'Katowice Airport', 'Gdansk City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    puts 'Pick Up Locations for Zadar'
    pick_ups = City.find_by(name: 'Zadar').pick_up_locations.reorder('id asc')
    ['Ljubljana Airport', 'Split Airport', 'Novalja', 'Zadar City Centre', 'Tisno', 'Starigrad Paklenica', 'Sukosan', 'Vodice', 'Baska Voda', 'Bihac', 'Biograd', 'Bled', 'Brela', 'Drvenik', 'Dubrovnik City Centre', 'Gornji Karin', 'Igrane', 'Ljubljana City Centre', 'Makarska', 'Marina', 'Motovun', 'Murter', 'Omis', 'Opatija', 'Pag', 'Pakostane', 'Petrcane', 'Plitvice Lakes', 'Ploce', 'Podgora', 'Portoroz', 'Primosten', 'Pula', 'Rijeka City Centre', 'Rogoznica', 'Sibenik', 'Split City Centre', 'Trogir', 'Tucepi', 'Vinisce', 'Zagreb City Centre', 'Zaton', 'Zivogosce'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Ljubljana Airport', 'Split Airport', 'Vienna Airport', 'Zadar Airport', 'Zagreb Airport', 'Novalja', 'Bled', 'Ljubljana City Centre', 'Portoroz', 'Vienna City Centre', 'Zadar City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Zadar Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Zagreb Airport', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Ljubljana Airport', 'Bled', 'Ljubljana City Centre', 'Portoroz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Ljubljana Airport', 'Split Airport', 'Vienna Airport', 'Zadar Airport', 'Novalja', 'Bled', 'Ljubljana City Centre', 'Portoroz', 'Vienna City Centre', 'Zadar City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Split Airport', 'Zadar Airport', 'Zagreb Airport', 'Novalja', 'Zadar City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Zadar Airport', 'Zagreb Airport', 'Novalja', 'Zadar City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Split Airport', 'Zadar Airport', 'Zagreb Airport', 'Novalja', 'Zadar City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Zadar Airport', 'Novalja', 'Zadar City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Ljubljana Airport', 'Split Airport', 'Zadar Airport', 'Zagreb Airport', 'Novalja', 'Ljubljana City Centre', 'Zadar City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Zadar Airport', 'Novalja', 'Zadar City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Ljubljana Airport', 'Split Airport', 'Zadar Airport', 'Zagreb Airport', 'Novalja', 'Ljubljana City Centre', 'Zadar City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Belgrade Airport', 'Ljubljana Airport', 'Osijek Airport', 'Split Airport', 'Zadar Airport', 'Zagreb Airport', 'Novalja', 'Zadar City Centre', 'Tisno', 'Starigrad Paklenica', 'Sukosan', 'Baska Voda', 'Biograd', 'Bled', 'Brela', 'Dubrovnik City Centre', 'Ljubljana City Centre', 'Makarska', 'Murter', 'Opatija', 'Pag', 'Pakostane', 'Petrcane', 'Plitvice Lakes', 'Ploce', 'Podgora', 'Portoroz', 'Primosten', 'Rijeka City Centre', 'Rogoznica', 'Sibenik', 'Split City Centre', 'Trogir', 'Tucepi', 'Vodice', 'Zagreb City Centre', 'Zaton'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    puts 'Pick Up Locations for Sharm El Sheikh'
    pick_ups = City.find_by(name: 'Sharm El Sheikh').pick_up_locations.reorder('id asc')
    ['Nuweiba Port', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels', 'Sharks Bay', 'Naama Bay', 'Nabq Bay', 'Dahab', 'Om El Seid Hill', 'Hadaba', 'Neema Bay', 'Nuweiba', 'Ras Nasrani', 'Rus Um Shid', 'Sinai Bay Club Med', 'St Catherine', 'Taba'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Sharm El Sheikh Airport', 'Taba Airport', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels', 'Sharks Bay', 'Dahab', 'Nuweiba', 'St Catherine', 'Taba'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Sharm El Sheikh Airport', 'Nuweiba Port', 'Sharm El Sheikh Hotels', 'Sharks Bay', 'Naama Bay', 'Nabq Bay', 'Dahab', 'Om El Seid Hill', 'Hadaba', 'Neema Bay', 'Nuweiba', 'Ras Nasrani', 'Rus Um Shid', 'St Catherine', 'Taba'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Sharm El Sheikh Airport', 'Taba Airport', 'Nuweiba Port', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels', 'Taba'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Sharm El Sheikh Airport', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Sharm El Sheikh Airport', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Sharm El Sheikh Airport', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Sharm El Sheikh Airport', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Sharm El Sheikh Airport', 'Taba Airport', 'Nuweiba Port', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels', 'Taba'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Sharm El Sheikh Airport', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Sharm El Sheikh Airport', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Sharm El Sheikh Airport', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Sharm El Sheikh Airport', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Cairo Airport', 'Sharm El Sheikh Airport', 'Taba Airport', 'Nuweiba Port', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels', 'Sharks Bay', 'Naama Bay', 'Nabq Bay', 'Dahab', 'Cairo City Centre', 'Hadaba', 'Neema Bay', 'Nuweiba', 'Om El Seid Hill', 'Ras Nasrani', 'Rus Um Shid', 'St Catherine', 'Taba'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Sharm El Sheikh Airport', 'Nuweiba Port', 'Sharm El Sheikh Port', 'Sharm El Sheikh Hotels', 'Sharm El Sheikh Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    puts 'Pick Up Locations for Lyon'
    pick_ups = City.find_by(name: 'Lyon').pick_up_locations.reorder('id asc')
    ['Lyon City Centre', 'Chamonix', 'Dijon', 'Les Orres', 'Abondance', 'Aillons Margeriaz', 'Albertville', 'Albiez Montrond', 'Alpe d Huez', 'Alpe du Grand Serre', 'Ancelle', 'Andermatt', 'Aosta', 'Areches', 'Areches Beaufort', 'Argentiere', 'Aussois', 'Avoriaz', 'Bern City Centre', 'Bernex', 'Bessans', 'Briancon', 'Brides Les Bains', 'Chambery Town Centre', 'Chamonix Mont Blanc', 'Champery', 'Champoluc', 'Chamrousse', 'Chateau Ville Vieille', 'Chatel', 'Courchevel', 'Courmayeur', 'Fiesch', 'Flaine', 'Flumet', 'Geneva City Centre', 'Grenoble Town Centre', 'Gresse en Vercors', 'Isola 2000', 'La Clusaz', 'La Grave', 'La Norma', 'La Plagne', 'La Rossiere', 'La Tania', 'La Toussuire', 'Lanslebourg Mont Cenis', 'Lausanne', 'Lauterbrunnen', 'Le Grand Bornand', 'Lenk', 'Lenzerheide', 'Les Allues', 'Les Arcs', 'Les Bossons', 'Les Carroz', 'Les Coches', 'Les Contamines', 'Les Crosets', 'Les Deux Alpes', 'Les Gets', 'Les Houches', 'Les Menuires', 'Les Praz de Chamonix', 'Les Saisies', 'Leysin', 'Livigno', 'Macon', 'Megeve', 'Meiringen', 'Meribel', 'Montchavin', 'Montgenevre', 'Montreux', 'Morgins', 'Morzine', 'Mottaret', 'Moutiers', 'Muerren', 'Orcieres Merlette', 'Ovronnaz', 'Oz', 'Plagne Montalbert', 'Pra Loup', 'Pralognan la Vanoise', 'Prapoutel', 'Praz Sur Arly', 'Puy Saint Vincent', 'Reallon Savines le Lac', 'Risoul', 'Saint Gervais les Bains', 'Saint Jean d Arves', 'Saint Martin de Belleville', 'Saint Sorlin d Arves', 'Saint Vincent Aosta', 'Samoens', 'Serre Chevalier', 'St Clair Les Annonay', 'St Francois Longchamp', 'St Jean Montclar', 'St Jean de Belleville', 'Superdevoluy', 'Termignon', 'Thollon les Memises', 'Tignes', 'Val Cenis', 'Val Thorens', 'Val d Allos', 'Val d illiez', 'Val d lsere', 'Valence', 'Valfrejus', 'Valloire', 'Valmeinier', 'Valmorel', 'Valtournenche', 'Vars', 'Vaujany', 'Verbier', 'Veysonnaz', 'Villard Reculas', 'Villard de Lans', 'Villars sur Ollon', 'Viviers', 'Wengen', 'Zurich City Centre', 'Zweisimmen'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Livigno', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Annecy Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Metz Nancy Airport', 'Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Marseille Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Marseille City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Annecy Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Metz Nancy Airport', 'Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Lyon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Frankfurt Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Lyon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Grenoble Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Lyon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    puts 'Pick Up Locations for Treviso'
    pick_ups = City.find_by(name: 'Treviso').pick_up_locations.reorder('id asc')
    ['Bologna Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Venice Cruise Port', 'Milan Train Station', 'Treviso City Centre', 'Casale sul Sile', 'Vittorio Veneto', 'Asolo', 'Abano Terme', 'Alleghe', 'Arabba', 'Auronzo', 'Bassano', 'Belluno', 'Bergamo City Centre', 'Bibione', 'Bologna City Centre', 'Bolzano', 'Brescia', 'Canazei', 'Caorle', 'Castelfranco Veneto', 'Cavallino', 'Chioggia', 'Conegliano', 'Cortina d Ampezzo', 'Corvara', 'Dolo', 'Ferrara', 'Grado', 'Jesolo', 'Lido di Jesolo', 'Lignano Sabbiadoro', 'Ljubljana City Centre', 'Madonna di Campiglio', 'Mantova', 'Marcon', 'Marmolada', 'Martellago', 'Meolo', 'Milan City Centre', 'Milano Marittima', 'Mira', 'Mirano', 'Misurina', 'Mogliano Veneto', 'Murano', 'Padova', 'Palmanova', 'Portogruaro', 'Portoroz', 'Punta Sabbioni', 'Quarto d Altino', 'Radovljica', 'Roncade', 'San Bonifacio', 'Sirmione', 'Spinea', 'Trento', 'Trieste City Centre', 'Udine', 'Valdobbiadene', 'Venice City Hotels', 'Venice Lido', 'Venice Piazzale Roma', 'Verona City Centre', 'Vicenza', 'Villorba'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Treviso Airport', 'Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Treviso Airport', 'Bergamo City Centre', 'Bologna City Centre', 'Forli'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Treviso Airport', 'Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Ljubljana Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Venice Airport', 'Venice Cruise Port', 'Milan Train Station', 'Ancona', 'Bled', 'Bologna City Centre', 'Forli', 'Ljubljana City Centre', 'Milan City Centre', 'Portoroz', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Venice Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    puts 'Pick Up Locations for Paros'
    pick_ups = City.find_by(name: 'Paros').pick_up_locations.reorder('id asc')
    ['Paros Parikia Port', 'Agia Irini', 'Aliki', 'Ambelas', 'Kolymbithres', 'Lefkes', 'Naoussa', 'Chrysi Akti', 'Drios', 'Logaras', 'Molos', 'Parasporos', 'Parikia', 'Piso Livadi', 'Pounda', 'Santa Maria'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Paros Airport', 'Agia Irini', 'Aliki', 'Ambelas', 'Kolymbithres', 'Lefkes', 'Naoussa', 'Chrysi Akti', 'Drios', 'Logaras', 'Molos', 'Parasporos', 'Parikia', 'Piso Livadi', 'Pounda', 'Santa Maria'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Paros Airport', 'Paros Parikia Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    puts 'Pick Up Locations for Montpellier'
    pick_ups = City.find_by(name: 'Montpellier').pick_up_locations.reorder('id asc')
    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Barcelona Airport', 'Marseille Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Barcelona Airport', 'Girona Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Barcelona Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Barcelona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Pau Airport', 'Toulouse Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Toulouse Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Girona Airport', 'Marseille Airport', 'Pau Airport', 'Toulouse Airport', 'Marseille City Centre', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Barcelona Airport', 'Pau Airport', 'Toulouse Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Toulouse Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Aix en Provence'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Toulouse Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    puts 'Pick Up Locations for Antwerp'
    pick_ups = City.find_by(name: 'Antwerp').pick_up_locations.reorder('id asc')
    ['Amsterdam Schiphol Airport', 'Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Vlissingen'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Amsterdam Schiphol Airport', 'Brussels Airport', 'Charleroi Airport', 'Eindhoven Airport', 'Rotterdam Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Bruges', 'Bruges City Centre', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Eindhoven Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    puts 'Pick Up Locations for Hurghada'
    pick_ups = City.find_by(name: 'Hurghada').pick_up_locations.reorder('id asc')
    ['Cairo Airport', 'Luxor Airport', 'Marsa Alam Airport', 'Hurghada Port', 'Luxor Port', 'Hurghada Hotels', 'El Gouna', 'Makhadi Bay', 'Soma Bay', 'Hamata', 'Sahl Hasheesh', 'Al Kosseir', 'Berenice', 'Cairo City Centre', 'Caribbean World Soma Bay', 'Conrad Resort', 'Coral Beach', 'El Hamrawein', 'El Naaba', 'El Quseir', 'Luxor Hotels', 'Marsa Alam', 'Ras Sadr', 'Safaga', 'Safaga Port', 'Zafarana'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Cairo Airport', 'Hurghada Airport', 'Luxor Airport', 'Marsa Alam Airport', 'Hurghada Port', 'Luxor Port', 'Hurghada Hotels', 'El Gouna', 'Makhadi Bay', 'Soma Bay', 'Hamata', 'Sahl Hasheesh', 'Al Kosseir', 'Berenice', 'Cairo City Centre', 'Caribbean World Soma Bay', 'Conrad Resort', 'Coral Beach', 'El Hamrawein', 'El Naaba', 'El Quseir', 'Luxor Hotels', 'Marsa Alam', 'Ras Sadr', 'Safaga', 'Safaga Port', 'Zafarana'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Hurghada Airport', 'Luxor Airport', 'Hurghada Port', 'Hurghada Hotels', 'Luxor Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Hurghada Airport', 'Marsa Alam Airport', 'Hurghada Port', 'Hurghada Hotels', 'Marsa Alam'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Cairo Airport', 'Hurghada Airport', 'Luxor Airport', 'Marsa Alam Airport', 'Hurghada Port', 'Luxor Port', 'Hurghada Hotels', 'El Gouna', 'Makhadi Bay', 'Soma Bay', 'Hamata', 'Sahl Hasheesh', 'Al Kosseir', 'Berenice', 'Cairo City Centre', 'Caribbean World Soma Bay', 'Conrad Resort', 'Coral Beach', 'El Hamrawein', 'El Naaba', 'El Quseir', 'Luxor Hotels', 'Marsa Alam', 'Ras Sadr', 'Safaga', 'Safaga Port', 'Zafarana'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Hurghada Airport', 'Luxor Airport', 'Marsa Alam Airport', 'Hurghada Port', 'Hurghada Hotels', 'Luxor Hotels', 'Marsa Alam'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Hurghada Airport', 'Luxor Airport', 'Hurghada Port', 'Hurghada Hotels', 'Luxor Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Hurghada Airport', 'Hurghada Port', 'Hurghada Hotels', 'Hurghada Hotels'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    puts 'Pick Up Locations for Limassol'
    pick_ups = City.find_by(name: 'Limassol').pick_up_locations.reorder('id asc')
    ['Larnaca Airport', 'Paphos Airport', 'Limassol', 'Larnaca City Centre', 'Paphos City Centre', 'Pyla'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Ercan Airport', 'Larnaca Airport', 'Paphos Airport', 'Limassol', 'Nissi Bay', 'Episkopi', 'Agios Athanasios', 'Germasoyia', 'Agia Marina Chrysochous', 'Agios Georgios Peyia  ', 'Agros', 'Alaminos', 'Amathus', 'Anavargos', 'Argaka', 'Ayia Napa', 'Ayia Thekla', 'Ayia Triada', 'Chloraka', 'Coral Bay', 'Deryneia', 'Dhekelia', 'Drouseia', 'Egkomi', 'Emba', 'Erimi', 'Famagusta', 'Governors Beach', 'Kakopetria', 'Kalavasos', 'Kapparis', 'Kathikas', 'Kato Paphos', 'Kissonerga', 'Konia', 'Kouklia', 'Kyrenia', 'Larnaca Bay', 'Larnaca City Centre', 'Latchi', 'Letymbou', 'Liopetri', 'Makounta', 'Makronissos Agia Napa', 'Miliou', 'Nata', 'Neo Chorio', 'Nicosia IT', 'Ora', 'Oroklini', 'Pano Akourdaleia', 'Paphos City Centre', 'Paralimni', 'Pedoulas', 'Pentakomo', 'Pernera', 'Pervolia', 'Peyia', 'Pissouri', 'Platres', 'Polis', 'Pomos', 'Prodromi', 'Protaras', 'Pyla', 'Skarinou', 'Skoulli', 'Steni', 'Tala', 'Tochni', 'Tombs of Kings Road', 'Troodos'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Limassol', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Ercan Airport', 'Larnaca Airport', 'RAF Akrotiri Airport', 'Limassol Cruise Port', 'Limassol', 'Nissi Bay', 'Episkopi', 'Agios Athanasios', 'Agia Marina Chrysochous', 'Agios Georgios Peyia  ', 'Agros', 'Alaminos', 'Amathus', 'Anavargos', 'Argaka', 'Ayia Napa', 'Ayia Thekla', 'Ayia Triada', 'Chloraka', 'Coral Bay', 'Deryneia', 'Dhekelia', 'Drouseia', 'Egkomi', 'Emba', 'Erimi', 'Famagusta', 'Germasoyia', 'Governors Beach', 'Kakopetria', 'Kalavasos', 'Kapparis', 'Kathikas', 'Kato Paphos', 'Kissonerga', 'Konia', 'Kouklia', 'Larnaca Bay', 'Larnaca City Centre', 'Latchi', 'Letymbou', 'Liopetri', 'Makounta', 'Makronissos Agia Napa', 'Miliou', 'Nata', 'Neo Chorio', 'Nicosia', 'Ora', 'Oroklini', 'Pano Akourdaleia', 'Paralimni', 'Pedoulas', 'Pentakomo', 'Pernera', 'Pervolia', 'Peyia', 'Pissouri', 'Platres', 'Polis', 'Pomos', 'Prodromi', 'Protaras', 'Pyla', 'Skarinou', 'Skoulli', 'Steni', 'Tala', 'Tochni', 'Tombs of Kings Road', 'Troodos'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Limassol Cruise Port', 'Limassol', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    puts 'Pick Up Locations for Helsinki'
    pick_ups = City.find_by(name: 'Helsinki').pick_up_locations.reorder('id asc')
    ['Helsinki Cruise Port', 'Helsinki Train Station', 'Helsinki City Centre', 'Espoo', 'Tempere', 'Vantaa', 'Naantali', 'Turku', 'Dalsbruk', 'Hamina', 'Hanko', 'Kotka', 'Lahti', 'Lappeenranta', 'Loviisa', 'Mikkeli', 'Pori', 'Porvoo', 'Taalindtehdas'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Helsinki Airport', 'Helsinki City Centre', 'Espoo', 'Tempere', 'Vantaa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Helsinki Airport', 'Helsinki City Centre', 'Espoo', 'Korpilampi', 'Vantaa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Helsinki Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Helsinki Airport', 'Helsinki Cruise Port', 'Helsinki Train Station', 'Helsinki City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Helsinki Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Helsinki Airport', 'Helsinki City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Helsinki Airport', 'Helsinki Cruise Port', 'Helsinki City Centre', 'Espoo', 'Tempere', 'Vantaa', 'Hanko', 'Kotka', 'Lahti', 'Lappeenranta', 'Pori', 'Turku'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Helsinki Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Helsinki Airport', 'Helsinki City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Helsinki Airport', 'Helsinki City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Helsinki Airport', 'Helsinki City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Helsinki Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Helsinki Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Helsinki Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Helsinki Airport', 'Helsinki City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Helsinki Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Helsinki Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Helsinki Airport', 'Helsinki City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Helsinki Airport', 'Helsinki City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Helsinki Airport', 'Helsinki Cruise Port', 'Helsinki Train Station', 'Helsinki City Centre', 'Helsinki City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    puts 'Pick Up Locations for San Sebastian'
    pick_ups = City.find_by(name: 'San Sebastian').pick_up_locations.reorder('id asc')
    ['Bilbao Airport', 'Santander Airport', 'San Sebastian', 'Irun', 'Hondarribia', 'Burgos', 'Ahetze', 'Amurrio', 'Bayonne', 'Bermeo', 'Biarritz', 'Bidart', 'Bidegoian', 'Bilbao City Centre', 'Biriatou', 'Burlada', 'Ciboure', 'Derio', 'Etxalar', 'Getxo', 'Guethary', 'Hendaya', 'Hernani', 'Lekeito', 'Lezo', 'Logrono', 'Madrid City Centre', 'Mutriku', 'Noain', 'Oiartzun', 'Pamplona', 'Santander City Centre', 'Sare', 'St Jean de Luz', 'Tolosa', 'Urrugne', 'Vera de Bidasoa', 'Zarautz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bilbao Airport', 'Madrid Airport', 'San Sebastian Airport', 'San Sebastian', 'Bilbao City Centre', 'Madrid City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Bilbao Airport', 'San Sebastian Airport', 'San Sebastian', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Bilbao Airport', 'San Sebastian Airport', 'San Sebastian', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Bilbao Airport', 'San Sebastian Airport', 'San Sebastian', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Biarritz Airport', 'Biarritz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Biarritz Airport', 'Bilbao Airport', 'Bordeaux Airport', 'Madrid Airport', 'Pau Airport', 'San Sebastian Airport', 'Santander Airport', 'Bordeaux Train Station', 'Dax Train Station', 'San Sebastian', 'Irun', 'Hondarribia', 'Ahetze', 'Amurrio', 'Bayonne', 'Bermeo', 'Biarritz', 'Bidart', 'Bidegoian', 'Bilbao City Centre', 'Biriatou', 'Bordeaux City Centre', 'Burgos', 'Burlada', 'Ciboure', 'Dax', 'Derio', 'Etxalar', 'Getxo', 'Guethary', 'Hendaya', 'Hernani', 'Lekeito', 'Lezo', 'Logrono', 'Madrid City Centre', 'Mutriku', 'Noain', 'Oiartzun', 'Pamplona', 'Pau', 'San Sebastian de Garabandal', 'Santander City Centre', 'Sare', 'St Jean de Luz', 'Tolosa', 'Urrugne', 'Vera de Bidasoa', 'Zarautz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Bilbao Airport', 'San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['San Sebastian Airport', 'San Sebastian', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    puts 'Pick Up Locations for Strasbourg'
    pick_ups = City.find_by(name: 'Strasbourg').pick_up_locations.reorder('id asc')
    ['Metz Nancy Airport', 'Munich Airport', 'Strasbourg Train Station', 'Valenciennes', 'Colmar', 'Strasbourg City Centre', 'Trith Saint Leger', 'Aarau', 'Amneville', 'Baccarat', 'Baden', 'Baden Baden', 'Basel City Centre', 'Belfort', 'Bern City Centre', 'Besancon', 'Biel', 'Dieuze', 'Dijon', 'Disneyland', 'Dusseldorf', 'Epinal', 'Forbach', 'Frankfurt City Centre', 'Freiburg im Breisgau', 'Geneva City Centre', 'Gerardmer', 'Gruyeres', 'Haguenau', 'Interlaken', 'Karlsruhe', 'Konstanz', 'Kreuzlingen', 'La Bresse', 'Lausanne', 'Leukerbad', 'Luneville', 'Luxembourg City Centre', 'Luxeuil les Bains', 'Luzern', 'Metz', 'Montreux', 'Mulhouse', 'Munster', 'Nancy', 'Neuchatel', 'Offenburg', 'Paris City Centre', 'Rust', 'Saarbrucken', 'Saint Die des Vosges', 'Sarrebourg', 'Sarreguemines', 'Saverne', 'Solothurn', 'Stuttgart City Centre', 'Titisee Neustadt', 'Tuttlingen', 'Verbier', 'Xonrupt Longemer', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Munich Airport', 'Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Basel Airport', 'Strasbourg Airport', 'Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Metz Nancy Airport', 'Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Basel Airport', 'Metz Nancy Airport', 'Strasbourg Airport', 'Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Basel Airport', 'Chambery Airport', 'Grenoble Airport', 'Metz Nancy Airport', 'Strasbourg Airport', 'Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Metz Nancy Airport', 'Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Basel Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Basel Airport', 'Strasbourg Airport', 'Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Metz Nancy Airport', 'Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Metz Nancy Airport', 'Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Metz Nancy Airport', 'Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Metz Nancy Airport', 'Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Strasbourg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Basel Airport', 'Chambery Airport', 'Frankfurt Airport', 'Grenoble Airport', 'Hahn Airport', 'Metz Nancy Airport', 'Munich Airport', 'Strasbourg Airport', 'Zurich Airport', 'Frankfurt Train Station', 'Baden Baden', 'Basel City Centre', 'Frankfurt City Centre', 'Gruyeres', 'Interlaken', 'Lausanne', 'Leukerbad', 'Luxembourg City Centre', 'Luzern', 'Montreux', 'Nancy', 'Neuchatel', 'Paris City Centre', 'Stuttgart City Centre', 'Verbier', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Brussels Airport', 'Charleroi Airport', 'Brussels Central Train Station', 'Brussels Midi Train Station', 'Brussels Nord Train Station', 'Brussels City Centre', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Metz Nancy Airport', 'Strasbourg Airport', 'Bern City Centre', 'Geneva City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Metz Nancy Airport', 'Strasbourg Airport', 'Bern City Centre', 'Geneva City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    puts 'Pick Up Locations for Mykonos'
    pick_ups = City.find_by(name: 'Mykonos').pick_up_locations.reorder('id asc')
    ['Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port', 'Mykonos City Centre', 'Agios Ioannis', 'Agios Stefanos', 'Amigdalidi', 'Agios Sostis', 'Ano Mera', 'Argari', 'Drafaki', 'Elia', 'Ftelia', 'Houlakia', 'Kalafatis', 'Kalo Livadi', 'Korfos', 'Ornos', 'Paradise', 'Paraga', 'Platis Gialos', 'Psarou', 'Tagoo', 'Tourlos'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Mykonos Airport', 'Panormos', 'Mykonos Chora Old Port', 'Mykonos City Centre', 'Agios Ioannis', 'Agios Stefanos', 'Agios Sostis', 'Amigdalidi', 'Ano Mera', 'Argari', 'Drafaki', 'Elia', 'Ftelia', 'Houlakia', 'Kalafatis', 'Kalo Livadi', 'Korfos', 'Ornos', 'Paradise', 'Paraga', 'Platis Gialos', 'Psarou', 'Tagoo', 'Tourlos'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Mykonos Airport', 'Panormos', 'Mykonos Chora Old Port', 'Mykonos City Centre', 'Agios Ioannis', 'Agios Stefanos', 'Agios Sostis', 'Amigdalidi', 'Ano Mera', 'Argari', 'Drafaki', 'Elia', 'Ftelia', 'Houlakia', 'Kalafatis', 'Kalo Livadi', 'Korfos', 'Ornos', 'Paradise', 'Paraga', 'Platis Gialos', 'Psarou', 'Tagoo', 'Tourlos'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Chania Airport', 'Heraklion Airport', 'Mykonos Airport', 'Heraklion Port', 'Mykonos Tourlos Cruise Port', 'Souda Port', 'Panormos', 'Chania Port', 'Heraklion City Centre', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Mykonos Airport', 'Mykonos Tourlos Cruise Port', 'Panormos', 'Mykonos Chora Old Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    puts 'Pick Up Locations for Hamburg'
    pick_ups = City.find_by(name: 'Hamburg').pick_up_locations.reorder('id asc')
    ['Hannover Airport', 'Hamburg Cruise Port', 'Hamburg City Centre', 'Kiel', 'Pinneberg', 'Luneburg', 'Flensburg', 'Schwerin', 'Bargteheide', 'Barsbuttel', 'Bergedorf', 'Bremen City Centre', 'Bremerhaven', 'Gdansk City Centre', 'Geesthacht', 'Halstenbek', 'Hamburg Wandsbek', 'Hannover', 'Harburg', 'Lubeck', 'Neu Wulmstorf', 'Norderstedt', 'Oldenburg', 'Oststeinbek', 'Rostock', 'Seevetal', 'Strande', 'Wedel', 'Wilhelmsburg'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Hamburg City Centre', 'Kiel', 'Lubeck'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Hamburg Airport', 'Hannover Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Hamburg Airport', 'Bergedorf'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Hamburg Airport', 'Hamburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Gdansk Airport', 'Hamburg Airport', 'Hannover Airport', 'Lubeck Airport', 'Bremen Airport', 'Bremerhaven', 'Gdansk City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Hamburg Airport', 'Lubeck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Hamburg Airport', 'Lubeck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Berlin Brandenburg Airport', 'Berlin Schonefeld Airport', 'Berlin Tegel Airport', 'Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Hamburg Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    puts 'Pick Up Locations for Lugano'
    pick_ups = City.find_by(name: 'Lugano').pick_up_locations.reorder('id asc')
    ['Lugano Train Station', 'Lugano City Centre', 'Mendrisio', 'Locarno', 'Airolo', 'Aldesago', 'Ascona', 'Basel City Centre', 'Bellinzona', 'Bergamo City Centre', 'Bern City Centre', 'Breganzona', 'Cassarate', 'Castagnola', 'Centro', 'Chiasso', 'Chur', 'Como Town', 'Davos', 'Luzern', 'Massagno', 'Olivone', 'Paradiso', 'Pregassona', 'San Bernardino', 'St Moritz', 'Varese', 'Viganello', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Lugano Airport', 'Milan Malpensa Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Lugano Airport', 'Milan Malpensa Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Basel Airport', 'Geneva Airport', 'Lugano Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Sion Airport', 'Zurich Airport', 'Milan Train Station', 'Sion Train Station', 'Zurich Train Station', 'Geneva City Centre', 'Milan City Centre', 'Sion', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Lugano Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Lugano City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Geneva Airport', 'Lyon Airport', 'Sion Airport', 'Sion Train Station', 'Geneva City Centre', 'Sion'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Lugano Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Sion Airport', 'Zurich Airport', 'Milan Train Station', 'Sion Train Station', 'Zurich Train Station', 'Lugano City Centre', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Sion', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Lugano Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Sion Airport', 'Vienna Airport', 'Zurich Airport', 'Lugano Train Station', 'Milan Train Station', 'Sion Train Station', 'Zurich Train Station', 'Lugano City Centre', 'Mendrisio', 'Airolo', 'Aldesago', 'Basel City Centre', 'Bellinzona', 'Bergamo City Centre', 'Bern City Centre', 'Breganzona', 'Cassarate', 'Castagnola', 'Centro', 'Chiasso', 'Chur', 'Como Town', 'Davos', 'Geneva City Centre', 'Locarno', 'Luzern', 'Massagno', 'Milan City Centre', 'Olivone', 'Paradiso', 'Pregassona', 'San Bernardino', 'Sion', 'St Moritz', 'Varese', 'Vienna City Centre', 'Viganello', 'Zermatt', 'Zuoz', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Bergamo Airport', 'Lugano Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Lugano City Centre', 'Milan City Centre', 'Stresa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Lugano Airport', 'Milan Malpensa Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Sion Airport', 'Zurich Airport', 'Milan Train Station', 'Sion Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Sion', 'Zermatt', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Lugano Airport', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Lugano Airport', 'Lugano City Centre', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    puts 'Pick Up Locations for Palermo'
    pick_ups = City.find_by(name: 'Palermo').pick_up_locations.reorder('id asc')
    ['Catania Airport', 'Palermo City Centre', 'Gioiosa Marea', 'Cefalu', 'Agrigento', 'Campofelice di Roccella', 'Terrasini', 'Acireale', 'Augusta', 'Avola', 'Caccamo', 'Caltagirone', 'Caltanissetta', 'Castelbuono', 'Casteldaccia', 'Catania City Centre', 'Corleone', 'Enna', 'Erice', 'Gangi', 'Gela', 'Giarre', 'Lercara Friddi', 'Licata', 'Marsala', 'Mazara del Vallo', 'Menfi', 'Messina', 'Milazzo', 'Modica', 'Monreale', 'Nicosia IT', 'Noto', 'Palazzo Adriano', 'Petralia Sottana', 'Piana degli Albanesi', 'Piazza Armerina', 'Pollina', 'Porto Empedocle', 'Portorosa', 'Prizzi', 'Ragusa', 'San Giuseppe Jato', 'San Vito lo Capo', 'Sant Agata di Militello', 'Santa Flavia', 'Sciacca', 'Selinunte', 'Siracusa', 'Taormina', 'Termini Imerese', 'Trabia', 'Trapani', 'Vittoria'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Catania Airport', 'Palermo Airport', 'Trapani Airport', 'Taormina'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Catania Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Catania Airport', 'Palermo Airport', 'Trapani Airport', 'Catania Port', 'Catania City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Catania Airport', 'Palermo Airport', 'Trapani Airport', 'Catania Port', 'Catania City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Catania Airport', 'Palermo Airport', 'Trapani Airport', 'Catania Port', 'Catania City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Catania Airport', 'Palermo Airport', 'Trapani Airport', 'Catania Port', 'Catania City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Palermo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Palermo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Catania Airport', 'Palermo Airport', 'Catania Port', 'Catania City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Palermo Airport', 'Trapani Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    puts 'Pick Up Locations for Gran Canaria'
    pick_ups = City.find_by(name: 'Gran Canaria').pick_up_locations.reorder('id asc')
    ['Las Palmas', 'Maspalomas', 'Puerto Rico Gran Canaria', 'Playa del Ingles', 'Anfi del Mar', 'Meloneras', 'Agaete', 'Aguimes', 'Amadores', 'Arguineguin', 'Arucas', 'El Salobre', 'La Aldea de Tolentino', 'Maspalomas Faro', 'Mogan City', 'Pasito Blanco', 'Patalavaca', 'Playa del Aguila', 'Playa del Cura', 'Puerto Mogan', 'San Agustin', 'Santa Lucia Tirajana', 'Taurito', 'Tauro', 'Tejeda', 'Telde', 'Vecindario'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Gran Canaria Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    puts 'Pick Up Locations for Rhodes'
    pick_ups = City.find_by(name: 'Rhodes').pick_up_locations.reorder('id asc')
    ['Archangelos', 'Kiotari', 'Ixia', 'Rhodes City Centre', 'Ialyssos', 'Kremasti', 'Afandou', 'Faliraki', 'Fanes', 'Gennadi', 'Haraki', 'Kalathos', 'Kalavarda', 'Kallithea', 'Kamiros', 'Kamiros Skala', 'Kolympia', 'Koskinou', 'Ladiko', 'Lardos', 'Lindos', 'Pastida', 'Pefkos', 'Rhodes Port', 'Stegna', 'Theologos', 'Tholos', 'Vlicha'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Rhodes Airport', 'Archangelos', 'Kiotari', 'Ixia', 'Rhodes City Centre', 'Ialyssos', 'Kremasti', 'Afandou', 'Faliraki', 'Fanes', 'Gennadi', 'Haraki', 'Kalathos', 'Kalavarda', 'Kallithea', 'Kamiros', 'Kamiros Skala', 'Kolympia', 'Koskinou', 'Ladiko', 'Lardos', 'Lindos', 'Pastida', 'Pefkos', 'Stegna', 'Theologos', 'Tholos', 'Vlicha'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Rhodes Airport', 'Rhodes Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    puts 'Pick Up Locations for Valencia'
    pick_ups = City.find_by(name: 'Valencia').pick_up_locations.reorder('id asc')
    ['Alicante Airport', 'Valencia Cruise Port', 'Valencia City Centre', 'Gandia', 'Vinaros', 'Carcaixent', 'Pego', 'Port Saplaya', 'Albir', 'Alcocebre', 'Alicante City Centre', 'Altea', 'Ametlla de Mar', 'Amposta', 'Barcelona City Centre', 'Benicarlo', 'Benicassim', 'Benidorm', 'Benissa', 'Cabo Roig', 'Calp', 'Campello', 'Canet Playa', 'Castellon', 'Chella', 'Ciudad Quesada', 'Cuenca', 'Cullera', 'Denia', 'El Saler', 'Elche', 'Finestrat', 'Guardamar', 'Jalon', 'Javea', 'La Manga Club', 'La Manga del Mar Menor', 'La Nucia', 'Madrid City Centre', 'Moraira', 'Murcia', 'Navajas', 'Oliva', 'Orihuela', 'Orihuela Costa', 'Oropesa del mar', 'Peniscola', 'Piles', 'Playa Flamenca', 'Port Aventura', 'Pucol', 'Rojales', 'Sagunto', 'Salou', 'San Carlos de la Rapita', 'Tarragona', 'Tavernes de Valldigna', 'Teruel', 'Torreblanca', 'Torrevieja', 'Valencia Suburbs', 'Villajoyosa', 'Villamartin'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Barcelona Cruise Port', 'Valencia Cruise Port', 'Valencia City Centre', 'Gandia', 'Vinaros', 'Carcaixent', 'Pego', 'Port Saplaya', 'Albir', 'Alcocebre', 'Alicante City Centre', 'Altea', 'Ametlla de Mar', 'Amposta', 'Barcelona City Centre', 'Benicarlo', 'Benicassim', 'Benidorm', 'Benissa', 'Cabo Roig', 'Calp', 'Campello', 'Canet Playa', 'Castellon', 'Chella', 'Ciudad Quesada', 'Cuenca', 'Cullera', 'Denia', 'El Saler', 'Elche', 'Finestrat', 'Guardamar', 'Jalon', 'Javea', 'La Manga Club', 'La Manga del Mar Menor', 'La Nucia', 'Madrid City Centre', 'Moraira', 'Murcia', 'Navajas', 'Oliva', 'Orihuela', 'Orihuela Costa', 'Oropesa del mar', 'Peniscola', 'Piles', 'Playa Flamenca', 'Port Aventura', 'Pucol', 'Rojales', 'Sagunto', 'Salou', 'San Carlos de la Rapita', 'Tarragona', 'Tavernes de Valldigna', 'Teruel', 'Torreblanca', 'Torrevieja', 'Villajoyosa', 'Villamartin'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Alicante Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Alicante Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Alicante Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Valencia Airport', 'Valencia Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Alicante Airport', 'Barcelona Airport', 'Biarritz Airport', 'Madrid Airport', 'Toulouse Airport', 'Valencia Airport', 'Barcelona Cruise Port', 'Valencia Cruise Port', 'Valencia Train Station', 'Valencia City Centre', 'Gandia', 'Vinaros', 'Carcaixent', 'Pego', 'Albir', 'Alcocebre', 'Alicante City Centre', 'Altea', 'Ametlla de Mar', 'Amposta', 'Barcelona City Centre', 'Benicarlo', 'Benicassim', 'Benidorm', 'Benissa', 'Biarritz', 'Cabo Roig', 'Calp', 'Campello', 'Canet Playa', 'Castellon', 'Chella', 'Ciudad Quesada', 'Cuenca', 'Cullera', 'Denia', 'El Saler', 'Elche', 'Finestrat', 'Guardamar', 'Jalon', 'Javea', 'La Manga Club', 'La Manga del Mar Menor', 'La Nucia', 'Madrid City Centre', 'Moraira', 'Murcia', 'Navajas', 'Oliva', 'Orihuela', 'Orihuela Costa', 'Oropesa del mar', 'Peniscola', 'Playa Flamenca', 'Port Aventura', 'Port Saplaya', 'Pucol', 'Rojales', 'Sagunto', 'Salou', 'San Carlos de la Rapita', 'Tarragona', 'Tavernes de Valldigna', 'Teruel', 'Torreblanca', 'Torrevieja', 'Villajoyosa', 'Villamartin'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Valencia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Barcelona Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    puts 'Pick Up Locations for Larnaca'
    pick_ups = City.find_by(name: 'Larnaca').pick_up_locations.reorder('id asc')
    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Nicosia', 'Protaras', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Ercan Airport', 'Paphos Airport', 'RAF Akrotiri Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Nicosia', 'Protaras', 'Kyrenia', 'Larnaca City Centre', 'Kiti', 'Anafotida ', 'Anassa', 'Aphrodite Hills', 'Aradippou', 'Argaka', 'Ascos Coral Beach', 'Ayia Thekla', 'Azia', 'Bogaz', 'Chloraka', 'Coral Bay', 'Droushia', 'Emba', 'Episkopi', 'Erimi', 'Esentepe', 'Famagusta', 'Kakopetria', 'Kalavasos', 'Kapparis', 'Kissonerga', 'Lapta', 'Larnaca Bay', 'Latchi', 'Letymbou', 'Limassol', 'Mandria', 'Maroni', 'Mazotos', 'Meniko', 'Morphou', 'Nissi Bay', 'Ormidhia', 'Oroklini', 'Paphos City Centre', 'Paralimni', 'Pernera', 'Pervolia', 'Peyia', 'Pissouri', 'Platres', 'Polis', 'Pomos', 'Pyla', 'Sotira', 'Tochni', 'Troodos'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Ayia Napa', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Ayia Napa', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Ercan Airport', 'Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Ayia Napa', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Ayia Napa', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Larnaca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Ayia Napa', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Nicosia', 'Larnaca City Centre', 'Paphos City Centre', 'Protaras'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Larnaca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Ercan Airport', 'Larnaca Airport', 'Paphos Airport', 'RAF Akrotiri Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Nicosia', 'Protaras', 'Kyrenia', 'Larnaca City Centre', 'Anassa', 'Aphrodite Hills', 'Aradippou', 'Ascos Coral Beach', 'Ayia Thekla', 'Azia', 'Bogaz', 'Chloraka', 'Coral Bay', 'Droushia', 'Emba', 'Episkopi', 'Erimi', 'Famagusta', 'Kalavasos', 'Kapparis', 'Kissonerga', 'Kiti', 'Larnaca Bay', 'Latchi', 'Letymbou', 'Limassol', 'Mandria', 'Maroni', 'Mazotos', 'Nissi Bay', 'Ormidhia', 'Oroklini', 'Paphos City Centre', 'Paralimni', 'Pernera', 'Pervolia', 'Peyia', 'Pissouri', 'Platres', 'Polis', 'Pomos', 'Pyla', 'Sotira', 'Tochni', 'Troodos'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Ayia Napa', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Ayia Napa', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Larnaca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Larnaca Airport', 'Ayia Napa', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Ayia Napa', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Ercan Airport', 'Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Nicosia', 'Kyrenia', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Larnaca Airport', 'Paphos Airport', 'RAF Akrotiri Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Ayia Napa', 'Larnaca City Centre', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Ayia Napa', 'Larnaca City Centre', 'Limassol', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    puts 'Pick Up Locations for Genoa'
    pick_ups = City.find_by(name: 'Genoa').pick_up_locations.reorder('id asc')
    ['Bergamo Airport', 'Nice Airport', 'Pisa Airport', 'Genoa Cruise Port', 'Savona Cruise Port', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure', 'Acquasanta', 'Acqui Terme', 'Alassio', 'Arenzano', 'Bergamo City Centre', 'Bordighera', 'Cabella Ligure', 'Camogli', 'Diano Marina', 'Florence City Centre', 'La Spezia', 'Monte Carlo', 'Monterosso al Mare', 'Nice City Centre', 'Pisa City Centre', 'San Remo', 'Savona', 'Sestri Levante', 'Varazze', 'Viareggio'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bergamo Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Nice Airport', 'Pisa Airport', 'Milan Train Station', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure', 'Alassio', 'Antibes', 'Arenzano', 'Bergamo City Centre', 'Bordighera', 'Camogli', 'Diano Marina', 'Gavi', 'La Spezia', 'Milan City Centre', 'Monte Carlo', 'Monterosso al Mare', 'Nice City Centre', 'Pisa City Centre', 'Rome City Centre', 'San Remo', 'Savona', 'Sestri Levante', 'Varazze'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Bergamo Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Nice Airport', 'Pisa Airport', 'Milan Train Station', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Antibes', 'Milan City Centre', 'Pisa City Centre', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bergamo Airport', 'Genoa Airport', 'Genoa Cruise Port', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Genoa Airport', 'Genoa Cruise Port', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Pisa Airport', 'Genoa Piazza Principe', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Genoa Airport', 'Genoa Cruise Port', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Genoa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Genoa Airport', 'Milan Malpensa Airport', 'Genoa Cruise Port', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Bergamo Airport', 'Genoa Airport', 'Nice Airport', 'Genoa Cruise Port', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Genoa Cruise Port', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Genoa Airport', 'Ljubljana Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Nice Airport', 'Pisa Airport', 'Zurich Airport', 'Genoa Cruise Port', 'Livorno Cruise Port', 'Savona Cruise Port', 'Milan Train Station', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Alassio', 'Arenzano', 'Bergamo City Centre', 'Bologna City Centre', 'Bordighera', 'Camogli', 'Diano Marina', 'Forli', 'La Spezia', 'Milan City Centre', 'Monte Carlo', 'Monterosso al Mare', 'Nice City Centre', 'Pisa City Centre', 'San Remo', 'Santa Margherita Ligure', 'Savona', 'Sestri Levante', 'Varazze'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Rimini Airport', 'Genoa Cruise Port', 'Livorno Cruise Port', 'Milan Train Station', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Ancona', 'Bologna City Centre', 'Florence City Centre', 'Forli', 'Milan City Centre', 'Pisa City Centre', 'Rimini', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Florence Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Milan Train Station', 'Florence City Centre', 'Milan City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Nice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Florence Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Genoa Cruise Port', 'Venice Cruise Port', 'Milan Train Station', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Florence City Centre', 'Milan City Centre', 'Pisa City Centre', 'Rome City Centre', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Bergamo Airport', 'Florence Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Nice Airport', 'Pisa Airport', 'Genoa Cruise Port', 'Savona Cruise Port', 'Milan Train Station', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure', 'Alassio', 'Arenzano', 'Bergamo City Centre', 'Bordighera', 'Camogli', 'Diano Marina', 'Florence City Centre', 'La Spezia', 'Milan City Centre', 'Monte Carlo', 'Monterosso al Mare', 'Nice City Centre', 'Pisa City Centre', 'San Remo', 'Savona', 'Sestri Levante', 'Varazze', 'Villefranche sur Mer'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Bergamo Airport', 'Florence Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Nice Airport', 'Pisa Airport', 'Genoa Cruise Port', 'Savona Cruise Port', 'Venice Cruise Port', 'Milan Train Station', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Alassio', 'Arenzano', 'Bellagio', 'Bergamo City Centre', 'Bordighera', 'Camogli', 'Diano Marina', 'Florence City Centre', 'La Spezia', 'Menaggio', 'Milan City Centre', 'Monte Carlo', 'Monterosso al Mare', 'Nice City Centre', 'Pisa City Centre', 'San Casciano Val di Pesa', 'San Remo', 'Savona', 'Sestri Levante', 'Varazze'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Milan Malpensa Airport', 'Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Bergamo Airport', 'Genoa Airport', 'Nice Airport', 'Genoa Cruise Port', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Bergamo Airport', 'Florence Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Nice Airport', 'Pisa Airport', 'Genoa Cruise Port', 'Savona Cruise Port', 'Milan Train Station', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Alassio', 'Arenzano', 'Bellagio', 'Bergamo City Centre', 'Bordighera', 'Camogli', 'Diano Marina', 'Florence City Centre', 'La Spezia', 'Milan City Centre', 'Monte Carlo', 'Monterosso al Mare', 'Nice City Centre', 'Pisa City Centre', 'San Remo', 'Savona', 'Sestri Levante', 'Varazze'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Bologna Airport', 'Forli Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Rimini Airport', 'Genoa Cruise Port', 'Milan Train Station', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Bologna City Centre', 'Forli', 'Milan City Centre', 'Pisa City Centre', 'Rimini', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Florence Airport', 'Genoa Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Genoa Cruise Port', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Florence City Centre', 'Pisa City Centre', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Genoa Airport', 'Genoa Cruise Port', 'Portofino', 'Genoa City Centre', 'Rapallo', 'Lerici', 'Santa Margherita Ligure'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Bergamo Airport', 'Nice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    puts 'Pick Up Locations for Pau'
    pick_ups = City.find_by(name: 'Pau').pick_up_locations.reorder('id asc')
    ['Pau', 'Aire sur l Adour', 'Argeles Gazost', 'Artouste', 'Ascou Pailheres', 'Ax 3 domaines', 'Agen', 'Albi', 'Andorra la Vella', 'Arcalis Andorra', 'Argens Minervois', 'Arinsal Andorra', 'Auch', 'Ax les Thermes', 'Baqueira Beret', 'Bareges', 'Bareges la Mongie', 'Beziers', 'Biarritz', 'Bilbao City Centre', 'Boi Taull', 'Bordeaux City Centre', 'Bram', 'Cahors', 'Campan Payolle', 'Camurac', 'Candanchu', 'Canillo Andorra', 'Carcassonne', 'Castelnaudary', 'Cauterets', 'Cerdagne Puigmal 2009', 'Condom', 'Domaine de Chioula', 'Douelle', 'El Tarter Andorra', 'Encamp Andorra', 'Escaldes Engordany Andorra', 'Etang de Lers', 'Eyne', 'Foix', 'Font Romeu', 'Formigal', 'Formigueres', 'Gavarnie', 'Gavarnie Gedre', 'Goulier Neige', 'Gourette', 'Guzet', 'Hautacam', 'Homps', 'Hossegor', 'La Massana Andorra', 'La Pierre Saint Martin', 'Lattes', 'Le Mourtis', 'Le Somport Candanchu', 'Les Angles', 'Les Monts d Olmes', 'Lombez', 'Lourdes', 'Luchon Superbagneres', 'Luz Saint Sauveur', 'Marciac', 'Mijanes Donozan', 'Mirande', 'Moissac', 'Mont de Marsan', 'Montauban', 'Montpellier City Centre', 'Narbonne', 'Nistos', 'Ordino Andorra', 'Orthez', 'Pas de la Casa Andorra', 'Peyragudes', 'Piau Engaly', 'Plateau de Beille', 'Porte Puymorens', 'Puyvalador', 'Rocamadour', 'Saint Lary Soulan', 'San Sebastian', 'Sarlat la Caneda', 'Soldeu Andorra', 'Soustons', 'St Jean Pied de Port', 'Tarbes', 'Toulouse', 'Trebes', 'Val Louron', 'Val d Azun', 'Valence sur Baise', 'Villefranche de Lauragais', 'Villeneuve sur Lot'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Barcelona Airport', 'Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Biarritz Airport', 'Bordeaux Airport', 'Pau Airport', 'Toulouse Airport', 'Bordeaux Train Station', 'Pau', 'Aire sur l Adour', 'Argeles Gazost', 'Artouste', 'Ascou Pailheres', 'Agen', 'Albi', 'Andorra la Vella', 'Arcalis Andorra', 'Argens Minervois', 'Arinsal Andorra', 'Auch', 'Ax 3 domaines', 'Ax les Thermes', 'Baqueira Beret', 'Bareges', 'Bareges la Mongie', 'Beziers', 'Biarritz', 'Bilbao City Centre', 'Boi Taull', 'Bordeaux City Centre', 'Bram', 'Cahors', 'Campan Payolle', 'Camurac', 'Candanchu', 'Canillo Andorra', 'Carcassonne', 'Castelnaudary', 'Cauterets', 'Cerdagne Puigmal 2009', 'Condom', 'Domaine de Chioula', 'Douelle', 'El Tarter Andorra', 'Encamp Andorra', 'Escaldes Engordany Andorra', 'Etang de Lers', 'Eyne', 'Foix', 'Font Romeu', 'Formigal', 'Formigueres', 'Gavarnie', 'Gavarnie Gedre', 'Goulier Neige', 'Gourette', 'Guzet', 'Hautacam', 'Homps', 'Hossegor', 'La Massana Andorra', 'La Pierre Saint Martin', 'Lattes', 'Le Mourtis', 'Le Somport Candanchu', 'Les Angles', 'Les Monts d Olmes', 'Lombez', 'Lourdes', 'Luchon Superbagneres', 'Luz Saint Sauveur', 'Marciac', 'Mijanes Donozan', 'Mirande', 'Moissac', 'Mont de Marsan', 'Montauban', 'Montpellier City Centre', 'Narbonne', 'Nistos', 'Ordino Andorra', 'Orthez', 'Pas de la Casa Andorra', 'Peyragudes', 'Piau Engaly', 'Plateau de Beille', 'Porte Puymorens', 'Puyvalador', 'Rocamadour', 'Saint Lary Soulan', 'San Sebastian', 'Sarlat la Caneda', 'Soldeu Andorra', 'Soustons', 'St Jean Pied de Port', 'Tarbes', 'Toulouse', 'Trebes', 'Val Louron', 'Val d Azun', 'Valence sur Baise', 'Villefranche de Lauragais', 'Villeneuve sur Lot'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Pau Airport', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Pau Airport', 'Pau', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    puts 'Pick Up Locations for Turin'
    pick_ups = City.find_by(name: 'Turin').pick_up_locations.reorder('id asc')
    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Turin City Centre', 'Pragelato', 'La Thuile', 'Sestriere', 'Gressoney', 'Aosta', 'Cervinia', 'Champoluc', 'Courmayeur', 'La Plagne', 'Livigno', 'Milan City Centre', 'Pila Vercelli', 'Saint Vincent Aosta', 'Sauze d Oulx', 'Serre Chevalier', 'St Moritz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Turin City Centre', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Bologna Airport', 'Bologna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Milan Train Station', 'Turin City Centre', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Turin City Centre', 'Bergamo City Centre', 'Bern City Centre', 'Cervinia', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Basel Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Basel Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Zurich Airport', 'Turin City Centre', 'Bergamo City Centre', 'Geneva City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Basel Airport', 'Bern Airport', 'Bologna Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Turin Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Turin City Centre', 'Pragelato', 'La Thuile', 'Aosta', 'Bern City Centre', 'Bologna City Centre', 'Cervinia', 'Champoluc', 'Courmayeur', 'Geneva City Centre', 'Gressoney', 'Livigno', 'Milan City Centre', 'Pila Vercelli', 'Rimini', 'Saint Vincent Aosta', 'St Moritz', 'Tremezzo', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Bologna Airport', 'Bologna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    puts 'Pick Up Locations for Paphos'
    pick_ups = City.find_by(name: 'Paphos').pick_up_locations.reorder('id asc')
    ['Ercan Airport', 'Larnaca Airport', 'RAF Akrotiri Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Pissouri', 'Aphrodite Hills', 'Polis', 'Coral Bay', 'Kissonerga', 'Anarita', 'Anassa', 'Aradippou', 'Argaka', 'Ayia Napa', 'Ayia Thekla', 'Azia', 'Bogaz', 'Chloraka', 'Droushia', 'Emba', 'Episkopi', 'Erimi', 'Famagusta', 'Kakopetria', 'Kalavasos', 'Kapparis', 'Kiti', 'Kyrenia', 'Larnaca Bay', 'Larnaca City Centre', 'Latchi', 'Latsia', 'Letymbou', 'Mandria', 'Maroni', 'Mazotos', 'Nicosia IT', 'Nikokleia', 'Nissi Bay', 'Ormidhia', 'Oroklini', 'Paralimni', 'Pernera', 'Pervolia', 'Peyia', 'Platres', 'Pomos', 'Protaras', 'Pyla', 'Sotira', 'Tochni', 'Troodos', 'Tsada'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Paphos Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Paphos City Centre', 'Larnaca City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Larnaca Airport', 'Larnaca City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Paphos City Centre', 'Larnaca City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Paphos Airport', 'Paphos City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Larnaca City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Larnaca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Paphos Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Ercan Airport', 'Larnaca Airport', 'Paphos Airport', 'RAF Akrotiri Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Pissouri', 'Aphrodite Hills', 'Polis', 'Coral Bay', 'Anassa', 'Aradippou', 'Argaka', 'Ayia Napa', 'Ayia Thekla', 'Azia', 'Bogaz', 'Chloraka', 'Droushia', 'Emba', 'Episkopi', 'Erimi', 'Famagusta', 'Kalavasos', 'Kapparis', 'Kissonerga', 'Kiti', 'Kyrenia', 'Larnaca Bay', 'Larnaca City Centre', 'Latchi', 'Latsia', 'Letymbou', 'Maroni', 'Mazotos', 'Nicosia IT', 'Nissi Bay', 'Ormidhia', 'Oroklini', 'Paralimni', 'Pernera', 'Pervolia', 'Peyia', 'Platres', 'Pomos', 'Protaras', 'Pyla', 'Sotira', 'Tochni', 'Troodos'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Limassol Cruise Port', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Larnaca Airport', 'Paphos Airport', 'Limassol Cruise Port', 'Paphos City Centre', 'Larnaca City Centre', 'Limassol'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Paphos Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    puts 'Pick Up Locations for Istanbul'
    pick_ups = City.find_by(name: 'Istanbul').pick_up_locations.reorder('id asc')
    ['Sabiha Gokcen Airport', 'Istanbul City Centre', 'Taksim', 'Maslak', 'Istanbul Port', 'Esenler Bus Station', 'Uskudar', 'Aksaray', 'Atasehir', 'Avcilar', 'Bakirkoy', 'Basaksehir', 'Besiktas', 'Bostanci', 'Buyukcekmece', 'Catalca', 'Cekmekoy', 'Corlu', 'Harem Bus Station', 'Istinye', 'Izmit', 'Kadikoy', 'Kartal', 'Kumburgaz', 'Maltepe', 'Pendik', 'Polonezkoy', 'Sariyer', 'Silivri', 'Sisli', 'Sultanahmet', 'Umraniye'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Istanbul City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Ataturk Airport', 'Istanbul City Centre', 'Taksim', 'Maslak', 'Istanbul Port', 'Esenler Bus Station', 'Agva', 'Aksaray', 'Atasehir', 'Avcilar', 'Bakirkoy', 'Basaksehir', 'Besiktas', 'Beykoz', 'Bostanci', 'Buyukcekmece', 'Cekmekoy', 'Gebze', 'Harem Bus Station', 'Istinye', 'Izmit', 'Kadikoy', 'Maltepe', 'Pendik', 'Polonezkoy', 'Sakarya', 'Sariyer', 'Sile', 'Silivri', 'Sisli', 'Sultanahmet', 'Tuzla', 'Umraniye', 'Uskudar'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Sabiha Gokcen Airport', 'Istanbul City Centre', 'Besiktas'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport', 'Agva'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Ataturk Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Ataturk Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Ataturk Airport', 'Corlu Airport', 'Sabiha Gokcen Airport', 'Agva'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Ataturk Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Ataturk Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Ataturk Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Ataturk Airport', 'Sabiha Gokcen Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    puts 'Pick Up Locations for Grenoble'
    pick_ups = City.find_by(name: 'Grenoble').pick_up_locations.reorder('id asc')
    ['Alpe d Huez', 'Saint Jean d Arves', 'Grenoble Town Centre', 'Les Deux Alpes', 'Puy Saint Vincent', 'Montgenevre', 'Abondance', 'Abries', 'Aillons Margeriaz', 'Albiez Montrond', 'Alpe du Grand Serre', 'Ancelle', 'Annecy City Centre', 'Annemasse', 'Areches Beaufort', 'Argentiere', 'Aussois', 'Avoriaz', 'Belle Plagne', 'Bernex', 'Besancon', 'Bessans', 'Briancon', 'Brides Les Bains', 'Chambery Town Centre', 'Chamonix Mont Blanc', 'Chamrousse', 'Chateau Ville Vieille', 'Chatel', 'Colmar', 'Courchevel', 'Dijon', 'Divonne les Bains', 'Evian les Bains', 'Flaine', 'Flumet', 'Geneva City Centre', 'Gresse en Vercors', 'Isola 2000', 'La Clusaz', 'La Grave', 'La Plagne', 'La Rossiere', 'La Tania', 'La Toussuire', 'Lanslebourg Mont Cenis', 'Les Allues', 'Les Arcs', 'Les Bossons', 'Les Carroz', 'Les Contamines', 'Les Crosets', 'Les Gets', 'Les Houches', 'Les Menuires', 'Les Orres', 'Les Praz de Chamonix', 'Les Saisies', 'Lyon City Centre', 'Megeve', 'Meribel', 'Mijoux', 'Montalbert', 'Montchavin', 'Morzine', 'Mottaret', 'Moutiers', 'Mulhouse', 'Nancy', 'Nice City Centre', 'Orcieres Merlette', 'Oz', 'Plagne Montalbert', 'Pra Loup', 'Pralognan la Vanoise', 'Prapoutel', 'Praz Sur Arly', 'Reallon Savines le Lac', 'Risoul', 'Saint Ismier', 'Saint Martin de Belleville', 'Saint Sorlin d Arves', 'Sainte Foy Tarentaise', 'Samoens', 'Serre Chevalier', 'St Francois Longchamp', 'St Gervais Les Bains', 'St Jean Montclar', 'St Jean de Belleville', 'Strasbourg City Centre', 'Superdevoluy', 'Termignon', 'Thollon les Memises', 'Tignes', 'Val Cenis', 'Val Thorens', 'Val d Allos', 'Val d lsere', 'Valence', 'Valfrejus', 'Valloire', 'Valmeinier', 'Valmorel', 'Vars', 'Vaujany', 'Villard Reculas', 'Villard de Lans', 'Xonrupt Longemer'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Alpe d Huez', 'Les Deux Alpes'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Chambery Airport', 'Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Annecy Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Bern City Centre', 'Geneva City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Chambery Airport', 'Lyon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Annecy Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Grenoble Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Chambery Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Basel Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Grenoble Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Marseille Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Marseille City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Bern City Centre', 'Geneva City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Annecy Airport', 'Grenoble Airport', 'Lyon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Morzine', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    puts 'Pick Up Locations for Krakow'
    pick_ups = City.find_by(name: 'Krakow').pick_up_locations.reorder('id asc')
    ['Warsaw Airport', 'Krakow City Centre', 'Brzesko', 'Bukowina Tatrzanska', 'Jurgow', 'Bielsko Biala', 'Kielce', 'Banska Bystrica', 'Bedrichov', 'Benecko', 'Bialka Tatrzanska', 'Bila', 'Bochnia', 'Brusno', 'Budapest City Centre', 'Celadna', 'Cenkovice', 'Certovica', 'Cervenohorske Sedlo', 'Chocholow', 'Cieszyn', 'Czarna Gora', 'Czestochowa', 'Drienica', 'Gliczarow Gorny', 'Gliwice', 'Gorlice', 'Harrachov', 'High Tatras', 'Janske Lazne', 'Karpacz', 'Katowice City Centre', 'Korbielow', 'Korenov', 'Koscielisko', 'Krahule', 'Krakow Nowa Huta', 'Kraliky', 'Kremnica', 'Krompachy', 'Krosno', 'Krynica', 'Kubinska Hola', 'Lanov', 'Liptovska Teplicka', 'Liptovske Jan', 'Lodz', 'Lublin', 'Lubochna', 'Lubovnianske Kupele', 'Makov', 'Mala Moravka', 'Mala Upa', 'Male Ciche', 'Martinske Hole', 'Medvedin', 'Mlynky', 'Murzasiche', 'Myto pod Dumbierom', 'Niepolomice', 'Opole', 'Oscadnica', 'Ostrava', 'Ostruzna', 'Paseky nad Jizerou', 'Pec pod Snezkou', 'Pezinska Baba', 'Plejsy', 'Podbanske', 'Poprad', 'Poronin', 'Poruba', 'Przemysl', 'Pyrzowice', 'Rabka', 'Radom', 'Regetovka', 'Remata', 'Rokytnice nad Jizerou', 'Rzeszow', 'Sanok', 'Semily', 'Severak', 'Siepraw', 'Skalite Serafinov', 'Spindleruv Mlyn', 'Stary Smokovec', 'Strazne', 'Strbske Pleso', 'Svetla pod Jestedem', 'Svit', 'Svoboda nad Upou', 'Szczyrk', 'Szklarska Poreba', 'Tarnow', 'Telgart', 'Trojanovice', 'Turany', 'Turcianske Klacany', 'Tychy', 'Utekac', 'Velka Raca', 'Vernar', 'Vitkovice', 'Vratna', 'Vrbno pod Pradedem', 'Vrchlabi', 'Vrutky', 'Vysne Ruzbachy', 'Warsaw City Centre', 'Wisla', 'Witow', 'Wroclaw City Centre', 'Zakopane', 'Zavada', 'Zawoja', 'Zdiar', 'Zdobnice'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Gdansk Airport', 'Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Gdansk City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Wroclaw Airport', 'Krakow City Centre', 'Katowice City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Wroclaw Airport', 'Krakow City Centre', 'Katowice City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Krakow Balice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Wroclaw Airport', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Gdansk Airport', 'Katowice Airport', 'Krakow Balice Airport', 'Modlin Airport', 'Warsaw Airport', 'Krakow City Centre', 'Gdansk City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Bratislava Airport', 'Gdansk Airport', 'Katowice Airport', 'Krakow Balice Airport', 'Vienna Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Krakow City Centre', 'Brzesko', 'Bukowina Tatrzanska', 'Jurgow', 'Bielsko Biala', 'Banska Bystrica', 'Bedrichov', 'Benecko', 'Bialka Tatrzanska', 'Bila', 'Bochnia', 'Brusno', 'Budapest City Centre', 'Celadna', 'Cenkovice', 'Certovica', 'Cervenohorske Sedlo', 'Chocholow', 'Cieszyn', 'Czarna Gora', 'Czestochowa', 'Drienica', 'Gdansk City Centre', 'Gliczarow Gorny', 'Gliwice', 'Harrachov', 'High Tatras', 'Janske Lazne', 'Karpacz', 'Katowice City Centre', 'Kielce', 'Korbielow', 'Korenov', 'Koscielisko', 'Krahule', 'Krakow Nowa Huta', 'Kraliky', 'Kremnica', 'Krompachy', 'Krosno', 'Krynica', 'Kubinska Hola', 'Lanov', 'Liptovska Teplicka', 'Liptovske Jan', 'Lodz', 'Lublin', 'Lubochna', 'Lubovnianske Kupele', 'Makov', 'Mala Moravka', 'Mala Upa', 'Male Ciche', 'Martinske Hole', 'Medvedin', 'Mlynky', 'Murzasiche', 'Myto pod Dumbierom', 'Niepolomice', 'Opole', 'Oscadnica', 'Ostrowiec', 'Ostruzna', 'Paseky nad Jizerou', 'Pec pod Snezkou', 'Pezinska Baba', 'Plejsy', 'Podbanske', 'Poprad', 'Poronin', 'Poruba', 'Przemysl', 'Pyrzowice', 'Rabka', 'Radom', 'Regetovka', 'Remata', 'Rokytnice nad Jizerou', 'Rzeszow', 'Sanok', 'Semily', 'Severak', 'Siepraw', 'Skalite Serafinov', 'Spindleruv Mlyn', 'Stary Smokovec', 'Strazne', 'Strbske Pleso', 'Svetla pod Jestedem', 'Svit', 'Svoboda nad Upou', 'Szczyrk', 'Szklarska Poreba', 'Tarnow', 'Telgart', 'Trojanovice', 'Turany', 'Turcianske Klacany', 'Tychy', 'Utekac', 'Velka Raca', 'Vernar', 'Vienna City Centre', 'Vitkovice', 'Vratna', 'Vrbno pod Pradedem', 'Vrchlabi', 'Vrutky', 'Vysne Ruzbachy', 'Warsaw City Centre', 'Wisla', 'Witow', 'Wroclaw City Centre', 'Zakopane', 'Zavada', 'Zawoja', 'Zdiar', 'Zdobnice'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Wroclaw Airport', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Krakow Balice Airport', 'Krakow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Katowice Airport', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Wroclaw Airport', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Katowice Airport', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Krakow City Centre', 'Krakow City Centre', 'Warsaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Wroclaw Airport', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Katowice Airport', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Wroclaw Airport', 'Krakow City Centre', 'Katowice City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Gdansk Airport', 'Katowice Airport', 'Krakow Balice Airport', 'Modlin Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Krakow City Centre', 'Gdansk City Centre', 'Katowice City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Wroclaw Airport', 'Krakow City Centre', 'Katowice City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Wroclaw Airport', 'Krakow City Centre', 'Katowice City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Krakow Balice Airport', 'Krakow City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Krakow City Centre', 'Katowice City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Gdansk Airport', 'Katowice Airport', 'Krakow Balice Airport', 'Modlin Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Krakow City Centre', 'Gdansk City Centre', 'Katowice City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Modlin Airport', 'Warsaw Airport', 'Wroclaw Airport', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Katowice Airport', 'Krakow Balice Airport', 'Wroclaw Airport', 'Krakow City Centre', 'Katowice City Centre', 'Wroclaw City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    puts 'Pick Up Locations for Antalya'
    pick_ups = City.find_by(name: 'Antalya').pick_up_locations.reorder('id asc')
    ['Antalya Cruise Port', 'Beldibi', 'Belek', 'Konyaalti', 'Kemer', 'Tekirova', 'Kaleici', 'Adrasan', 'Alanya', 'Antalya City Centre', 'Avsallar', 'Bogazkent', 'Camyuva', 'Cirali', 'Club Med Belek', 'Colakli', 'Demre', 'Fethiye', 'Finike', 'Gazipasa', 'Goynuk', 'Incekum', 'Kalkan', 'Kargicak', 'Kas', 'Kiris', 'Kizilagac', 'Kizilot', 'Konakli', 'Kumkoy Beach Resort', 'Kumluca', 'Kundu', 'Lara', 'Lykia World Resort', 'Mahmutlar', 'Manavgat', 'Okurcalar', 'Oludeniz', 'Olympus Bay', 'Side', 'Sorgun', 'Titreyengol', 'Turkler'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Beldibi', 'Belek'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Antalya Airport', 'Aspendos'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Antalya Airport', 'Dalaman Airport', 'Marmaris Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Antalya Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    puts 'Pick Up Locations for Marseille'
    pick_ups = City.find_by(name: 'Marseille').pick_up_locations.reorder('id asc')
    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Avignon Airport', 'Montpellier Airport', 'Nice Airport', 'Nimes Airport', 'Marseille City Centre', 'Marseille Port', 'Aix en Provence', 'Martigues', 'La Ciotat', 'Saintes Maries de la Mer', 'Agde', 'Arles', 'Avignon', 'Bandol', 'Buoux', 'Cannes City Centre', 'Cardarache', 'Cassis', 'Chateauneuf du Pape', 'Cotignac', 'Digne les Bains', 'Fayence', 'Forcalquier', 'Frejus', 'Gordes', 'Hyeres', 'Istres', 'La Seynes Sur Mer', 'La Tour d Aigues', 'Le Grau du Roi', 'Le Lavandou', 'Les Baux de Provence', 'Les Orres', 'Loumarin', 'Maillane', 'Mallemort Pont Royal', 'Meze', 'Monaco', 'Monte Carlo', 'Montpellier City Centre', 'Nice City Centre', 'Nimes', 'Orange', 'Palavas les Flots', 'Rayol Canadel sur Mer', 'Saint Cyr Sur Mer', 'Saint Paul Lez Durance', 'Saint Remy de Provence', 'Sainte Maxime', 'Salon de Provence', 'Serre Chevalier', 'Sete', 'Six Fours Les Plages', 'St Raphael', 'St Tropez', 'Super Sauze', 'Toulon', 'Vacheres'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Toulon Hyeres Airport', 'La Crau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Marseille Airport', 'Nice Airport', 'Marseille City Centre', 'Marseille Port', 'Arles', 'Saint Pantaleon les Vignes', 'Salon de Provence', 'Toulon'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Marseille Airport', 'Marseille City Centre', 'Marseille Port', 'Aix en Provence'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Marseille Airport', 'Nice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Marseille Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Avignon Airport', 'Barcelona Airport', 'Marseille Airport', 'Montpellier Airport', 'Nice Airport', 'Nimes Airport', 'Toulon Hyeres Airport', 'Barcelona Cruise Port', 'Marseille City Centre', 'Marseille Port', 'Aix en Provence', 'Arles', 'Avignon', 'Bandol', 'Barcelona City Centre', 'Cannes City Centre', 'Cassis', 'Chateauneuf du Pape', 'Fayence', 'Frejus', 'Hyeres', 'La Ciotat', 'La Seynes Sur Mer', 'Le Lavandou', 'Les Baux de Provence', 'Les Orres', 'Mallemort Pont Royal', 'Montpellier City Centre', 'Nice City Centre', 'Nimes', 'Orange', 'Saint Cyr Sur Mer', 'Saint Remy de Provence', 'Serre Chevalier', 'Six Fours Les Plages', 'St Raphael', 'St Tropez', 'Super Sauze', 'Toulon'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Marseille Airport', 'Toulon Hyeres Airport', 'Marseille City Centre', 'Marseille Port', 'Aix en Provence'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Marseille Airport', 'Nice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Marseille Airport', 'Marseille City Centre', 'Aix en Provence'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Marseille Airport', 'Marseille City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Marseille Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    puts 'Pick Up Locations for Belgrade'
    pick_ups = City.find_by(name: 'Belgrade').pick_up_locations.reorder('id asc')
    ['Belgrade City Centre', 'Jagodina', 'Kopaonik', 'Batocina', 'Bor', 'Cacak', 'Budapest City Centre', 'Cuprija', 'Debeljaca', 'Dubrovnik City Centre', 'Durdevi Stupovi', 'Golubac', 'Hopovo', 'Indija', 'Kikinda', 'Knjazevac', 'Kragujevac', 'Kraljevo', 'Krusevac', 'Leskovac', 'Ljubljana City Centre', 'Mediana', 'Mladenovac', 'Nis', 'Niska Banja', 'Novi Pazar', 'Novi Sad', 'Osijek City Centre', 'Pancevo', 'Paracin', 'Pecs', 'Petrovaradin', 'Pozarevac', 'Pula', 'Rijeka City Centre', 'Ruma', 'Sabac', 'Sokobanja', 'Sombor', 'Split City Centre', 'Sremska Mitrovica', 'Subotica', 'Szeged', 'Uzice', 'Valjevo', 'Vranje', 'Vrnjacka Banja', 'Vrsac', 'Vukovar', 'Zadar City Centre', 'Zagreb City Centre', 'Zajecar', 'Zlatibor', 'Zrenjanin'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Belgrade Airport', 'Ljubljana Airport', 'Zagreb Airport', 'Bled', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Ljubljana Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Belgrade Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    puts 'Pick Up Locations for Lamezia Terme'
    pick_ups = City.find_by(name: 'Lamezia Terme').pick_up_locations.reorder('id asc')
    ['Briatico', 'Castrovillari', 'Tropea', 'Amantea', 'Badolato', 'Botricello', 'Bivongi', 'Campora', 'Capo Vaticano', 'Carpanzano', 'Catanzaro', 'Catanzaro Beach', 'Ciro Marina', 'Corigliano', 'Cosenza', 'Cropani', 'Crotone', 'Falerna', 'Guardavalle', 'Isola Capo Rizzuto', 'Lamezia Terme', 'Le Castella', 'Locri', 'Montepaone Lido', 'Nicotera', 'Nocera', 'Paola', 'Parghelia', 'Pizzo Calabro', 'Pizzo Calabro Bravo Club', 'Pizzo Calabro Club Med Napitia', 'Praia a Mare', 'Reggio Calabria', 'Rende', 'Ricadi', 'Roccella Ionica', 'Rogliano', 'Rossano', 'San Giovanni in Fiore', 'Scalea', 'Sellia Marina', 'Sibari', 'Siderno', 'Simeri', 'Soverato', 'Vibo Valentia', 'Villa San Giovanni', 'Zambrone'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Briatico', 'Castrovillari', 'Tropea', 'Amantea', 'Badolato', 'Botricello', 'Bivongi', 'Campora', 'Capo Vaticano', 'Carpanzano', 'Catanzaro', 'Catanzaro Beach', 'Ciro Marina', 'Corigliano', 'Cosenza', 'Cropani', 'Crotone', 'Falerna', 'Guardavalle', 'Isola Capo Rizzuto', 'Lamezia Terme', 'Le Castella', 'Locri', 'Montepaone Lido', 'Nicotera', 'Nocera', 'Paola', 'Parghelia', 'Pizzo Calabro', 'Pizzo Calabro Bravo Club', 'Pizzo Calabro Club Med Napitia', 'Praia a Mare', 'Reggio Calabria', 'Rende', 'Ricadi', 'Roccella Ionica', 'Rogliano', 'Rossano', 'San Giovanni in Fiore', 'Scalea', 'Sellia Marina', 'Sibari', 'Siderno', 'Simeri', 'Soverato', 'Vibo Valentia', 'Villa San Giovanni', 'Zambrone'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Lamezia Terme Airport', 'Reggio Calabria'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Lamezia Terme Airport', 'Lamezia Terme'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Lamezia Terme Airport', 'Reggio Calabria'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Lamezia Terme Airport', 'Carpanzano', 'San Giovanni in Fiore'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Lamezia Terme Airport', 'Bivongi', 'Cosenza'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Lamezia Terme Airport', 'Lamezia Terme'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Lamezia Terme Airport', 'Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Lamezia Terme Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    puts 'Pick Up Locations for Geneva'
    pick_ups = City.find_by(name: 'Geneva').pick_up_locations.reorder('id asc')
    ['Milan Malpensa Airport', 'Geneva Train Station', 'Geneva City Centre', 'Verbier', 'Lausanne', 'Rolle', 'Visp', 'Eysins', 'Abetone', 'Abondance', 'Abries', 'Adelboden', 'Aigle', 'Aillons Margeriaz', 'Aix les Bains', 'Alagna', 'Alba', 'Albiez Montrond', 'Alleghe', 'Alpe Cermis', 'Alpe d Huez', 'Alpe di Mera', 'Alpe di Pampeago', 'Alpe di Siusi', 'Alpe du Grand Serre', 'Alta Badia', 'Alta Pusteria', 'Alta Valtellina', 'Ancelle', 'Andalo', 'Annecy City Centre', 'Annemasse', 'Antagnod', 'Anzere', 'Aosta', 'Aprica', 'Arabba', 'Araches la Frasse', 'Areches Beaufort', 'Argentiere', 'Arolla', 'Arosa', 'Artesina', 'Ascona', 'Asiago', 'Aussois', 'Avoriaz', 'Bad Ragaz', 'Bagnols', 'Bardonecchia', 'Basel City Centre', 'Baselga di Pine', 'Beaune', 'Bellamonte', 'Belle Plagne', 'Bellevaux', 'Bergamo City Centre', 'Bern City Centre', 'Bernex', 'Besancon', 'Bessans', 'Bormio', 'Boudry', 'Bourg Saint Maurice', 'Briancon', 'Brides Les Bains', 'Bruneck', 'Brusson', 'Bulle', 'Burgenstock', 'Campitello di Fassa', 'Canazei', 'Carezza al Lago', 'Carnia', 'Carona', 'Castione della Presolana', 'Cavalese', 'Celigny', 'Cerreto Laghi', 'Cervinia', 'Cesana Torinese', 'Chambery Town Centre', 'Chamonix', 'Champagny en Vanoise', 'Champery', 'Champoluc', 'Champoussin', 'Chamrousse', 'Chateau Ville Vieille', 'Chatel', 'Chexbres', 'Chiesa in Valmalenco', 'Chinaillon', 'Cimone', 'Claviere', 'Cogne', 'Colere', 'Collonge Bellerive', 'Comelico', 'Como Town', 'Cortina d Ampezzo', 'Corvara', 'Courchevel', 'Courmayeur', 'Crans Montana', 'Crissolo', 'Darfo Boario Terme', 'Davos', 'Dijon', 'Divonne les Bains', 'Duillier', 'Echenevex', 'Engelberg', 'Etroubles', 'Evian les Bains', 'Fai della Paganella', 'Falcade', 'Ferney Voltaire', 'Fiesch', 'Flaine', 'Flims', 'Flumet', 'Folgaria', 'Folgarida', 'Foppolo', 'Fribourg', 'Gossensass', 'Grenoble Town Centre', 'Gresse en Vercors', 'Gressoney', 'Gressoney Saint Jean', 'Grindelwald', 'Gruyeres', 'Gstaad', 'Interlaken', 'Isola 2000', 'Kastelruth', 'Klosters', 'La Clusaz', 'La Grave', 'La Plagne', 'La Rosiere', 'La Tania', 'La Thuile', 'La Toussuire', 'La Villa', 'Laax', 'Lanslebourg Mont Cenis', 'Lausanne Port', 'Lauterbrunnen', 'Lavarone', 'Le Bouveret', 'Le Brassus', 'Le Corbier', 'Le Grand Bornand', 'Le Mont Pelerin', 'Lecco', 'Lelex', 'Lenk', 'Les Allues', 'Les Arcs', 'Les Bossons', 'Les Carroz', 'Les Coches', 'Les Contamines', 'Les Crosets', 'Les Deux Alpes', 'Les Diableret', 'Les Echelles', 'Les Gets', 'Les Houches', 'Les Laux Prapoutel', 'Les Masses', 'Les Menuires', 'Les Orres', 'Les Praz de Chamonix', 'Les Saisies', 'Leukerbad', 'Leysin', 'Limone Piemonte', 'Livigno', 'Lizzano in Belvedere', 'Locarno', 'Lugano City Centre', 'Luzern', 'Lyon City Centre', 'Macugnaga', 'Madesimo', 'Madonna di Campiglio', 'Malga San Giorio', 'Manigod', 'Marilleva', 'Marmolada', 'Martigny', 'Megeve', 'Meiringen', 'Meran', 'Meransen', 'Meribel', 'Messery', 'Mijoux', 'Milan City Centre', 'Misurina', 'Moena', 'Molveno', 'Montalbert', 'Montchavin', 'Monte Bondone', 'Montecampione', 'Monterosa', 'Montgenevre', 'Montreux', 'Morgins', 'Morillon', 'Morzine', 'Mottaret', 'Moutiers', 'Muerren', 'Murten', 'Nendaz', 'Neuchatel', 'Neydens', 'Notre Dame de Bellecombe', 'Nova Levante', 'Nyon', 'Obereggen', 'Olang', 'Orbe', 'Orcieres Merlette', 'Ortise', 'Ovindoli', 'Ovronnaz', 'Oz', 'Paesana', 'Paris City Centre', 'Passo Lavaze', 'Passo Rolle', 'Passo San Pellegrino', 'Passo Stelvio', 'Passo del Brocon', 'Passo del Tonale', 'Pescegallo', 'Piancavallo', 'Piemonte', 'Pila Gressan', 'Pila Vercelli', 'Pinzolo', 'Plagne Montalbert', 'Plan', 'Plose Brixen', 'Ponte di Legno', 'Pozza di Fassa', 'Pra Loup', 'Pragelato', 'Prali', 'Pralognan la Vanoise', 'Prapoutel', 'Prato Nevoso', 'Praz Sur Arly', 'Predazzo', 'Puy Saint Vincent', 'Ravascletto', 'Reallon Savines le Lac', 'Reberty', 'Reinswald', 'Rheinfelden', 'Risoul', 'Roccaraso', 'Ruffre', 'Saas Fee', 'Saint Gervais les Bains', 'Saint Jean d Arves', 'Saint Jean d Aulps', 'Saint Leger', 'Saint Martin de Belleville', 'Saint Rhemy en Bosses', 'Saint Sorlin d Arves', 'Saint Vincent Aosta', 'Sainte Croix', 'Sainte Foy Tarentaise', 'Samoens', 'San Martino di Castrozza', 'San Sicario', 'San Vigilio', 'San Vito di Cadore', 'Sand in Taufers', 'Santa Cristina Pavia', 'Sappada', 'Sauze d Oulx', 'Schilpario', 'Schmieden', 'Sella Nevea', 'Selva di Cadore', 'Selva di Val Gardena', 'Senales', 'Serre Chevalier', 'Sestriere', 'Sion', 'Solda', 'Solothurn', 'Sondrio', 'St Anton am Arlberg', 'St Francois Longchamp', 'St Gallen', 'St Jean Montclar', 'St Jean de Belleville', 'St Moritz', 'St Ulrich Ortisei', 'Sterzing', 'Superdevoluy', 'Talloires', 'Tarvisio', 'Teglio', 'Termignon', 'Terminillo', 'Thollon les Memises', 'Thonon les Bains', 'Tignes', 'Torgnon', 'Tremignon', 'Troinex', 'Turin City Centre', 'Ugine', 'Vaduz', 'Val Cenis', 'Val Claret', 'Val Thorens', 'Val d Allos', 'Val d illiez', 'Val d lsere', 'Valfrejus', 'Valgrisenche', 'Vallandry', 'Valloire', 'Vallorcine', 'Valmeinier', 'Valmorel', 'Valtournenche', 'Vars', 'Vaujany', 'Vevey', 'Veysonnaz', 'Villard Reculas', 'Villard de Lans', 'Villars', 'Villars sur Ollon', 'Vovray en Bornes', 'Wengen', 'Wiler Lotschen', 'Xonrupt Longemer', 'Zambla', 'Zermatt', 'Zinal', 'Zoldo Alto', 'Zurich City Centre', 'Zweisimmen'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Geneva Airport', 'Geneva City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Sion Airport', 'Zurich Airport', 'Sion Train Station', 'Zurich Train Station', 'Geneva City Centre', 'Bern City Centre', 'Sion', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Basel Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Geneva City Centre', 'Zermatt', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Basel Airport', 'Geneva Airport', 'Lyon Airport', 'Sion Airport', 'Zurich Airport', 'Sion Train Station', 'Zurich Train Station', 'Geneva City Centre', 'Sion', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Sion Airport', 'Zurich Airport', 'Sion Train Station', 'Zurich Train Station', 'Geneva City Centre', 'Bern City Centre', 'Sion', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Annecy Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Annecy Airport', 'Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Milan Malpensa Airport', 'Sion Airport', 'Strasbourg Airport', 'Zurich Airport', 'Geneva Train Station', 'Sion Train Station', 'Geneva City Centre', 'Verbier', 'Abetone', 'Abondance', 'Abries', 'Adelboden', 'Aillons Margeriaz', 'Aime', 'Alagna', 'Alba', 'Albiez Montrond', 'Alleghe', 'Alpe Cermis', 'Alpe d Huez', 'Alpe di Mera', 'Alpe di Pampeago', 'Alpe di Siusi', 'Alpe du Grand Serre', 'Alta Badia', 'Alta Pusteria', 'Alta Valtellina', 'Ancelle', 'Andalo', 'Antagnod', 'Anzere', 'Aosta', 'Aprica', 'Arabba', 'Areches Beaufort', 'Argentiere', 'Arolla', 'Arosa', 'Artesina', 'Ascona', 'Asiago', 'Aussois', 'Avoriaz', 'Bad Ragaz', 'Bardonecchia', 'Basel City Centre', 'Baselga di Pine', 'Bellamonte', 'Belle Plagne', 'Bergamo City Centre', 'Bern City Centre', 'Bernex', 'Bessans', 'Bormio', 'Bourg Saint Maurice', 'Briancon', 'Brides Les Bains', 'Bruneck', 'Brusson', 'Bulle', 'Burgenstock', 'Campitello di Fassa', 'Canazei', 'Carezza al Lago', 'Carnia', 'Carona', 'Castione della Presolana', 'Cavalese', 'Cerreto Laghi', 'Cervinia', 'Cesana Torinese', 'Chamonix', 'Chamonix Mont Blanc', 'Champery', 'Champoluc', 'Chamrousse', 'Chateau Ville Vieille', 'Chatel', 'Chiesa in Valmalenco', 'Cimone', 'Claviere', 'Cogne', 'Colere', 'Combloux', 'Comelico', 'Como Town', 'Cortina d Ampezzo', 'Corvara', 'Courchevel', 'Courmayeur', 'Crans Montana', 'Crissolo', 'Darfo Boario Terme', 'Davos', 'Engelberg', 'Etroubles', 'Fai della Paganella', 'Falcade', 'Fiesch', 'Flaine', 'Flims', 'Flumet', 'Folgaria', 'Folgarida', 'Foppolo', 'Fribourg', 'Gossensass', 'Gresse en Vercors', 'Gressoney', 'Gressoney Saint Jean', 'Grindelwald', 'Gruyeres', 'Gstaad', 'Interlaken', 'Isola 2000', 'Kastelruth', 'La Clusaz', 'La Daille', 'La Grave', 'La Plagne', 'La Rosiere', 'La Tania', 'La Thuile', 'La Toussuire', 'La Villa', 'Laax', 'Lauterbrunnen', 'Lavarone', 'Le Grand Bornand', 'Le Lac de Tignes', 'Le Lavachet', 'Lecco', 'Lenk', 'Les Allues', 'Les Arcs', 'Les Bossons', 'Les Carroz', 'Les Coches', 'Les Contamines', 'Les Crosets', 'Les Deux Alpes', 'Les Diableret', 'Les Gets', 'Les Houches', 'Les Laux Prapoutel', 'Les Menuires', 'Les Orres', 'Les Praz de Chamonix', 'Les Saisies', 'Leukerbad', 'Leysin', 'Limone Piemonte', 'Livigno', 'Lizzano in Belvedere', 'Locarno', 'Lugano City Centre', 'Luzern', 'Macugnaga', 'Madesimo', 'Madonna di Campiglio', 'Malga San Giorio', 'Marilleva', 'Marmolada', 'Martigny', 'Megeve', 'Meiringen', 'Meran', 'Meransen', 'Meribel', 'Mijoux', 'Milan City Centre', 'Misurina', 'Moena', 'Molveno', 'Montchavin', 'Monte Bondone', 'Montecampione', 'Monterosa', 'Montgenevre', 'Montreux', 'Morgins', 'Morzine', 'Mottaret', 'Moutiers', 'Muerren', 'Nendaz', 'Neuchatel', 'Notre Dame de Bellecombe', 'Nova Levante', 'Obereggen', 'Olang', 'Orcieres Merlette', 'Ortise', 'Ovindoli', 'Ovronnaz', 'Oz', 'Paesana', 'Passo Lavaze', 'Passo Rolle', 'Passo San Pellegrino', 'Passo Stelvio', 'Passo del Brocon', 'Passo del Tonale', 'Pescegallo', 'Piancavallo', 'Piemonte', 'Pila Gressan', 'Pila Vercelli', 'Pinzolo', 'Plagne Bellecote', 'Plagne Montalbert', 'Plan', 'Plose Brixen', 'Ponte di Legno', 'Pozza di Fassa', 'Pra Loup', 'Pragelato', 'Prali', 'Pralognan la Vanoise', 'Prapoutel', 'Prato Nevoso', 'Praz Sur Arly', 'Predazzo', 'Puy Saint Vincent', 'Ravascletto', 'Reallon Savines le Lac', 'Reberty', 'Reinswald', 'Risoul', 'Roccaraso', 'Ruffre', 'Saas Fee', 'Saignelegier', 'Saint Gervais les Bains', 'Saint Jean d Arves', 'Saint Martin de Belleville', 'Saint Rhemy en Bosses', 'Saint Sorlin d Arves', 'Saint Vincent Aosta', 'Sainte Foy Tarentaise', 'Samoens', 'San Martino di Castrozza', 'San Sicario', 'San Vigilio', 'San Vito di Cadore', 'Sand in Taufers', 'Santa Cristina Pavia', 'Sappada', 'Sauze d Oulx', 'Schilpario', 'Sella Nevea', 'Selva di Cadore', 'Selva di Val Gardena', 'Senales', 'Serre Chevalier', 'Sestriere', 'Sion', 'Solda', 'Sondrio', 'St Francois Longchamp', 'St Gallen', 'St Jean Montclar', 'St Jean de Belleville', 'St Moritz', 'St Ulrich Ortisei', 'Sterzing', 'Superdevoluy', 'Tarvisio', 'Teglio', 'Termignon', 'Terminillo', 'Thollon les Memises', 'Tignes', 'Torgnon', 'Tremignon', 'Turin City Centre', 'Vaduz', 'Val Cenis', 'Val Claret', 'Val Thorens', 'Val d Allos', 'Val d illiez', 'Val d lsere', 'Valfrejus', 'Valgrisenche', 'Vallandry', 'Valloire', 'Vallorcine', 'Valmeinier', 'Valmorel', 'Valtournenche', 'Vars', 'Vaujany', 'Veysonnaz', 'Villard Reculas', 'Villard de Lans', 'Villars', 'Wengen', 'Xonrupt Longemer', 'Zambla', 'Zermatt', 'Zoldo Alto', 'Zurich City Centre', 'Zweisimmen'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Zermatt'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Sion Airport', 'Strasbourg Airport', 'Zurich Airport', 'Sion Train Station', 'Zurich Train Station', 'Bern City Centre', 'Sion', 'Strasbourg City Centre', 'Zermatt', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Bern Airport', 'Geneva Airport', 'Sion Airport', 'Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Grenoble Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Basel Airport', 'Geneva Airport', 'Sion Airport', 'Zurich Airport', 'Sion Train Station', 'Zurich Train Station', 'Geneva City Centre', 'Bern City Centre', 'Sion', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Sion Airport', 'Strasbourg Airport', 'Zurich Airport', 'Sion Train Station', 'Zurich Train Station', 'Geneva City Centre', 'Bern City Centre', 'Sion', 'Strasbourg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Sion Airport', 'Zurich Airport', 'Sion Train Station', 'Zurich Train Station', 'Geneva City Centre', 'Bern City Centre', 'Sion', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Sion Airport', 'Strasbourg Airport', 'Zurich Airport', 'Sion Train Station', 'Zurich Train Station', 'Geneva City Centre', 'Verbier', 'Bern City Centre', 'Sion', 'Strasbourg City Centre', 'Visp', 'Zermatt', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Basel Airport', 'Geneva Airport', 'Lyon Airport', 'Zurich Airport', 'Geneva City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Geneva Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Geneva City Centre', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Geneva Airport', 'Lyon Airport', 'Geneva City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Basel Airport', 'Frankfurt Airport', 'Zurich Airport', 'Zurich Train Station', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Geneva Airport', 'Lyon Airport', 'Sion Airport', 'Sion Train Station', 'Geneva City Centre', 'Sion'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Zurich Airport', 'Zurich Train Station', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Zurich Airport', 'Zurich Train Station', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Sion Airport', 'Strasbourg Airport', 'Zurich Airport', 'Sion Train Station', 'Zurich Train Station', 'Geneva City Centre', 'Bern City Centre', 'Klosters', 'Sion', 'Strasbourg City Centre', 'Zermatt', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Zurich Airport', 'Zurich Train Station', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Basel Airport', 'Geneva Airport', 'Lyon Airport', 'Sion Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Geneva Airport', 'Montreux', 'Zermatt'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Geneva Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    puts 'Pick Up Locations for Cluj Napoca'
    pick_ups = City.find_by(name: 'Cluj Napoca').pick_up_locations.reorder('id asc')
    ['Cilnic', 'Acatari', 'Aiud', 'Alba Iulia', 'Alesd', 'Apahida', 'Baia Mare', 'Bazna', 'Beclean', 'Belis', 'Blaj', 'Campia Turzii', 'Cisnadie', 'Cluj Napoca City Centre', 'Dej', 'Deva', 'Feleacu', 'Floresti', 'Gheorgheni', 'Gherla', 'Gilau', 'Huiedin', 'Hunedoara', 'Iernut', 'Ileanda', 'Jibou', 'Ludus', 'Medias', 'Nasaud', 'Negreni', 'Ocna Mures', 'Odorheiu Secuiesc', 'Oradea', 'Orastie', 'Praid', 'Reghin', 'Sangeorz Bai', 'Satu Mare', 'Sebes', 'Sibiu City', 'Sighisoara', 'Simleu Silvaniei', 'Somcuta Mare', 'Suceava', 'Targu Mures', 'Tarnaveni', 'Teius', 'Turda', 'Vadu Izei', 'Viseu de Jos', 'Viseu de Sus', 'Zalau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Cilnic', 'Acatari', 'Aiud', 'Alba Iulia', 'Alesd', 'Apahida', 'Baia Mare', 'Bazna', 'Beclean', 'Belis', 'Blaj', 'Campia Turzii', 'Cisnadie', 'Cluj Napoca City Centre', 'Dej', 'Deva', 'Feleacu', 'Floresti', 'Gheorgheni', 'Gherla', 'Gilau', 'Huiedin', 'Hunedoara', 'Iernut', 'Ileanda', 'Jibou', 'Ludus', 'Medias', 'Nasaud', 'Negreni', 'Ocna Mures', 'Odorheiu Secuiesc', 'Oradea', 'Orastie', 'Praid', 'Reghin', 'Sangeorz Bai', 'Satu Mare', 'Sebes', 'Sibiu City', 'Sighisoara', 'Simleu Silvaniei', 'Somcuta Mare', 'Suceava', 'Targu Mures', 'Tarnaveni', 'Teius', 'Turda', 'Vadu Izei', 'Viseu de Jos', 'Viseu de Sus', 'Zalau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport', 'Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport', 'Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Timisoara Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport', 'Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport', 'Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport', 'Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport', 'Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Cluj Napoca Airport', 'Sibiu Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Bucharest Baneasa Airport', 'Bucharest Otopeni Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Cluj Napoca Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    puts 'Pick Up Locations for Venice'
    pick_ups = City.find_by(name: 'Venice').pick_up_locations.reorder('id asc')
    ['Florence Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Treviso Airport', 'Trieste Airport', 'Verona Airport', 'Trieste Cruise Port', 'Venice Cruise Port', 'Mestre Train Station', 'Milan Train Station', 'St Lucia Train Station', 'Venice City Hotels', 'Mestre', 'Lido di Jesolo', 'Padova', 'Camping Marina di Venezia', 'Cavallino', 'Abano Terme', 'Alleghe', 'Alonte', 'Arabba', 'Asolo', 'Bassano del Grappa', 'Bibione', 'Burano', 'Ca Savio', 'Campagna Lupia', 'Camping Union Lido', 'Canazei', 'Caorle', 'Casale sul Sile', 'Cernobbio', 'Chioggia', 'Colfosco', 'Cortina d Ampezzo', 'Corvara', 'Duna Verde', 'Eraclea', 'Florence City Centre', 'Follina', 'Gardone Riviera', 'Gargnano', 'Gradisca D Isonzo', 'Grado', 'Hermagor', 'Jesolo', 'Lido di Spina', 'Lignano Sabbiadoro', 'Madonna di Campiglio', 'Mezzane di Sotto', 'Milan City Centre', 'Mira', 'Murano', 'Noventa di Piave', 'Ortisei', 'Peschiera del Garda', 'Pisa City Centre', 'Pordenone', 'Porto Santa Margherita', 'Portoroz', 'Pozza di Fassa', 'Punta Sabbioni', 'Quarto d Altino', 'Ravascletto', 'Riva del Garda', 'San Candido', 'San Clemente Island', 'San Servolo Island', 'Sant Elena Island', 'Selva di Val Gardena', 'Sirmione', 'Spinea', 'Stra', 'Torcello', 'Treviso City Centre', 'Udine', 'Umag', 'Venice Airport Hotels', 'Venice City Hotels (via P Roma)', 'Venice Lido', 'Venice Piazzale Roma', 'Verona City Centre', 'Vicenza', 'Villabassa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bologna Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Mestre Train Station', 'Milan Train Station', 'St Lucia Train Station', 'Venice City Hotels', 'Mestre', 'Lido di Jesolo', 'Florence City Centre', 'Milan City Centre', 'Monterosso al Mare', 'Noventa di Piave', 'Quarto d Altino', 'Rapallo', 'San Clemente Island', 'Treviso City Centre', 'Vedelago', 'Venice Lido', 'Venice Piazzale Roma', 'Zelarino'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Venice Cruise Port', 'Milan Train Station', 'Venice City Hotels', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Venice Cruise Port', 'Milan Train Station', 'Venice City Hotels', 'Mestre', 'Milan City Centre', 'Padova'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Bergamo Airport', 'Bergamo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Milan Malpensa Airport', 'Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Treviso Airport', 'Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Venice Airport', 'Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre', 'Venice Piazzale Roma'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Treviso Airport', 'Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Ljubljana Airport', 'Ljubljana City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Venice Cruise Port', 'Milan Train Station', 'Venice City Hotels', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Bergamo Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Bergamo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Venice Airport', 'Venice Cruise Port', 'Venice City Hotels', 'Caprino Veroneze', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Treviso Airport', 'Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Treviso Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Treviso Airport', 'Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Venice Cruise Port', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'St Lucia Train Station', 'Ancona', 'Bergamo City Centre', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Venice Airport', 'Ancona', 'Bergamo City Centre', 'Bologna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Treviso Airport', 'Venice Airport', 'Venice Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Ancona', 'Bergamo City Centre', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Venice Airport', 'Venice Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Treviso Airport', 'Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Florence Airport', 'Ljubljana Airport', 'Treviso Airport', 'Venice Airport', 'Vienna Airport', 'Zurich Airport', 'Venice Cruise Port', 'Mestre Train Station', 'St Lucia Train Station', 'Venice City Hotels', 'Mestre', 'Lido di Jesolo', 'Venice Piazzale Roma', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Venice Cruise Port', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Ljubljana Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Venice Cruise Port', 'Milan Train Station', 'Venice City Hotels', 'Ancona', 'Bled', 'Bologna City Centre', 'Caorle', 'Desenzano del Garda', 'Florence City Centre', 'Forli', 'Ljubljana City Centre', 'Milan City Centre', 'Peschiera del Garda', 'Portoroz', 'Prato', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Venice Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    puts 'Pick Up Locations for Alicante'
    pick_ups = City.find_by(name: 'Alicante').pick_up_locations.reorder('id asc')
    ['Valencia Airport', 'Santiago de la Ribera Cruise Port', 'Benidorm', 'Alicante City Centre', 'Altea', 'Calp', 'Playa de San Juan', 'Javea', 'Albacete', 'Albatera', 'Albir', 'Alcoy', 'Alenda Golf', 'Alfaz del Pi', 'Algeciras', 'Algorfa', 'Alhama Golf  Resort', 'Almansa', 'Almeria City Centre', 'Almoradi', 'Altea Hills', 'Banyeres de Mariola', 'Barcelona City Centre', 'Benejuzar', 'Benicassim', 'Benissa', 'Benitachell', 'Biar', 'Bigastro', 'Bonalba Golf', 'Busot', 'Cabo De Palos', 'Cabo Roig', 'Cala Finestrat', 'Callosa de Ensarria', 'Callosa de Segura', 'Campamor Golf Resort', 'Campello', 'Carboneras', 'Cartagena', 'Castalla', 'Catral', 'Ciudad Quesada', 'Cocentaina', 'Coveta Fuma', 'Cox', 'Dehesa de Campoamor', 'Denia', 'Dolores', 'Dona Pepa Urbanizacion', 'El Plantio Golf Resort', 'El Valle Golf Resort', 'El Vergel', 'Elche', 'Els Poblets', 'Finca Algorfa', 'Finestrat', 'Formentera del Segura', 'Fuente Alamo', 'Gandia', 'Gandia Playas', 'Garrucha', 'Gata de Gorgos', 'Gran Alacant', 'Granja de Rocamora', 'Guadalest', 'Guardamar', 'Hacienda Riquelme', 'Hacienda del Alamo', 'Ibi', 'Jacarilla', 'Jalon', 'Jesus Pobre', 'Jijona', 'La Azohia Cartagena', 'La Azohia Mazarron', 'La Manga Club', 'La Manga Strip', 'La Manga del Mar Menor', 'La Marina', 'La Mata', 'La Nucia', 'La Serena Golf Resort', 'La Tercia Club Resort', 'La Torre Golf', 'La Zenia', 'Las Colinas Golf Club', 'Las Ramblas De Orihuela Golf', 'Lo Pagan', 'Lo Romero Golf Resort', 'Lorca', 'Los Alcazeres', 'Los Montesinos', 'Los Nietos', 'Los Urrutias', 'Madrid City Centre', 'Mar Menor Golf Resort', 'Mazarron', 'Mazarron Puerto', 'Mil Palmeras', 'Mojacar', 'Molina del Segura', 'Moraira', 'Mosa Trajectum', 'Muchamiel', 'Murcia City Centre', 'Muxamel', 'Nijar', 'Novelda', 'Oliva', 'Ondara', 'Onil', 'Orba', 'Orcheta', 'Orihuela', 'Pedreguer', 'Pego', 'Peraleja Golf Resort', 'Petrer', 'Pilar de la Horadada', 'Pinoso', 'Playa Flamenca', 'Polop', 'Pueblo Acantilado', 'Puerto Lumbreras', 'Punta Prima Orihuela', 'Redovan', 'Relleu', 'Rojales', 'San Fulgencio', 'San Isidro', 'San Javier', 'San Juan de Alicante', 'San Miguel de las Salinas', 'San Pedro del Pinatar', 'San Vicente del Raspeig', 'Santa Pola', 'Sax', 'Teulada Valencia', 'Tibi', 'Torre de la Horadada', 'Torrevieja', 'Valencia City Centre', 'Villajoyosa', 'Villamartin', 'Villena'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Alicante Airport', 'Benidorm', 'Alicante City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Alicante Airport', 'Almeria Airport', 'Murcia Airport', 'Valencia Airport', 'Santiago de la Ribera Cruise Port', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Alicante Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Alicante Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Madrid Airport', 'Madrid City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Alicante Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    puts 'Pick Up Locations for Verona'
    pick_ups = City.find_by(name: 'Verona').pick_up_locations.reorder('id asc')
    ['Bergamo Airport', 'Brescia Airport', 'Florence Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Milan Train Station', 'Bella Italia Camping', 'Peschiera del Garda', 'Sirmione', 'Verona City Centre', 'Garda', 'Bardolino', 'Abano Terme', 'Alleghe', 'Alpe di Siusi', 'Andalo', 'Arabba', 'Arco', 'Bolzano', 'Brenzone', 'Brescia City Centre', 'Calceranica al Lago', 'Caldonazzo', 'Calvagese della Riviera', 'Camping Marina di Venezia', 'Camping Union Lido', 'Campitello di Fassa', 'Campo Tures', 'Canazei', 'Caorle', 'Cavalese', 'Colfosco', 'Compatsch', 'Cortina d Ampezzo', 'Corvara', 'Desenzano del Garda', 'Dimaro', 'Dobbiaco', 'Falcade', 'Florence City Centre', 'Folgaria', 'Folgarida', 'Fondo Grande', 'Gardaland', 'Gardone', 'Gargnano', 'Iseo', 'Lazise', 'Lignano Sabbiadoro', 'Limone Sul Garda', 'Livigno', 'Lovere', 'Madonna di Campiglio', 'Magre Sulla', 'Malcesine', 'Manerba del Garda', 'Mantova', 'Marilleva', 'Mazzin', 'Merano', 'Milan City Centre', 'Moena', 'Molveno', 'Moniga del Garda', 'Montichiari', 'Obereggen', 'Obra di Vallarsa', 'Ortisei', 'Padenghe', 'Padova', 'Pedemonte', 'Ponte di Legno', 'Povolaro', 'Predazzo', 'Riva del Garda', 'Salionze', 'Salo', 'San Benedetto Po', 'San Bonifacio', 'San Candido', 'San Cassiano', 'San Felice del Benaco', 'San Giovanni Lupatoto', 'San Martino di Castrozza', 'Sandrigo', 'Santa Cristina Val Gardena', 'Selva di Val Gardena', 'Solda', 'Solferino', 'St Moritz', 'St Ulrich Ortisei', 'Tignale', 'Torbole', 'Torri del Benaco', 'Trento', 'Trieste City Centre', 'Venice Piazzale Roma', 'Vicenza', 'Vigo di Fassa', 'Vipiteno'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Verona Porta Nuova Station', 'Bergamo City Centre', 'Bologna City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Treviso Airport', 'Ancona', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Bella Italia Camping', 'Verona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Bergamo Airport', 'Bergamo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Verona Porta Nuova Station', 'Bella Italia Camping', 'Bergamo City Centre', 'Milan City Centre', 'Venice Piazzale Roma', 'Verona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Treviso Airport', 'Ancona', 'Bergamo City Centre', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Verona Porta Nuova Station', 'Bergamo City Centre', 'Bologna City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre', 'Molveno'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Treviso Airport', 'Verona Airport', 'Milan Train Station', 'Ancona', 'Bergamo City Centre', 'Bologna City Centre', 'Forli', 'Milan City Centre', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Ancona Airport', 'Bologna Airport', 'Forli Airport', 'Ljubljana Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Rimini Airport', 'Ancona', 'Bled', 'Bologna City Centre', 'Forli', 'Ljubljana City Centre', 'Milan City Centre', 'Pisa City Centre', 'Portoroz', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bella Italia Camping', 'Bern City Centre', 'Gardaland', 'Geneva City Centre', 'Verona City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre', 'Venice Piazzale Roma'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Venice Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Ancona Airport', 'Bologna Airport', 'Forli Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Milan Train Station', 'Ancona', 'Bologna City Centre', 'Forli', 'Milan City Centre', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Verona Porta Nuova Station', 'Ancona', 'Castel d Azzano', 'Desenzano del Garda', 'Florence City Centre', 'Forli', 'Livigno', 'Milan City Centre', 'Molveno', 'Rimini', 'St Moritz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Ancona', 'Bologna City Centre', 'Forli', 'Milan City Centre', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    puts 'Pick Up Locations for Cagliari'
    pick_ups = City.find_by(name: 'Cagliari').pick_up_locations.reorder('id asc')
    ['Olbia Airport', 'Villasimius', 'Santa Margherita di Pula', 'Costa Rei', 'Cagliari City Centre', 'Quartu Sant Elena', 'Chia', 'Alghero', 'Alghero City Centre', 'Arbatax', 'Arborea', 'Bari Sardo', 'Bosa', 'Budoni', 'Bugerru', 'Cabras', 'Cala Gonone', 'Calasetta', 'Capo Boi', 'Capo Carbonara', 'Capoterra', 'Carbonia', 'Cardedu', 'Castiadas', 'Colostrai', 'Costa Smeralda', 'Costa Verde', 'Domus de Maria', 'Dorgali', 'Fonni', 'Geremeas', 'Iglesias', 'Is Arenas', 'Is Molas', 'Lanusei', 'Lotzorai', 'Macomer', 'Marina Di Capitana', 'Marina di Arbus', 'Muravera', 'Narbolia', 'Nora', 'Nuoro', 'Olbia City Centre', 'Oristano', 'Orroli', 'Ozieri', 'Porto Corallo', 'Porto Pino', 'Porto Torres', 'Portoscuso', 'Portovesme', 'Pula Cagliari', 'Putzu Idu', 'Sanluri', 'Sant Antioco', 'Santa Maria Navarrese', 'Santa Teresa di Gallura', 'Solanas', 'Terralba', 'Teulada', 'Tharros', 'Torre Delle Stelle', 'Torre Grande', 'Torre Salinas', 'Torre dei Corsari', 'Torre su Puttu', 'Tortoli', 'Villaputzu'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Santa Margherita di Pula', 'Costa Rei', 'Cagliari City Centre', 'Quartu Sant Elena', 'Alghero City Centre', 'Arbatax', 'Arborea', 'Bosa', 'Bugerru', 'Cala Gonone', 'Calasetta', 'Capo Boi', 'Carbonia', 'Cardedu', 'Castiadas', 'Chia', 'Costa Smeralda', 'Domus de Maria', 'Dorgali', 'Fonni', 'Geremeas', 'Iglesias', 'Is Molas', 'Lanusei', 'Lotzorai', 'Macomer', 'Marina Di Capitana', 'Marina di Arbus', 'Muravera', 'Nora', 'Nuoro', 'Oristano', 'Ozieri', 'Porto Corallo', 'Porto Pino', 'Porto Torres', 'Portovesme', 'Pula Cagliari', 'Sanluri', 'Sant Antioco', 'Santa Maria Navarrese', 'Santa Teresa di Gallura', 'Solanas', 'Terralba', 'Teulada', 'Tharros', 'Torre Delle Stelle', 'Torre Salinas', 'Torre dei Corsari', 'Tortoli', 'Villaputzu'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Cagliari Airport', 'Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Olbia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Cagliari Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Cagliari Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Cagliari Airport', 'Olbia Airport', 'Villasimius', 'Cagliari City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    puts 'Pick Up Locations for Naples'
    pick_ups = City.find_by(name: 'Naples').pick_up_locations.reorder('id asc')
    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Pompei', 'Amalfi', 'Ravello', 'Agerola', 'Agropoli', 'Alberobello', 'Atrani', 'Bagnoli', 'Carovilli', 'Casal Velino', 'Caserta', 'Castel Volturno', 'Castellabate', 'Castellammare di Stabia', 'Cava dei Tirreni', 'Cetara', 'Conca dei Marini ', 'Ercolano', 'Florence City Centre', 'Foggia', 'Formia', 'Ginestra degli Schiavoni', 'Grottaminarda', 'Maiori', 'Marina del Cantone', 'Massa Lubrense', 'Minori', 'Mondragone', 'Naples Ferry Port', 'Paestum', 'Palma Campania', 'Pisciotta', 'Pontecagnano', 'Potenza', 'Pozzuoli', 'Praiano', 'Rome City Centre', 'Salerno', 'San Giovanni Rotondo', 'Sant Agata sui Due golfi', 'Sant Agnello', 'Sant Antonio Abate', 'Sant Arpino', 'Sapri', 'Scalea', 'Scario', 'Scauri', 'Sesto Campano', 'Telese', 'Vietri sul Mare', 'Visciano'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Naples Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Pompei', 'Amalfi', 'Atrani', 'Caserta', 'Paestum', 'Pisciotta', 'Pozzuoli', 'Ravello', 'Rome City Centre', 'Salerno'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Naples Airport', 'Naples Cruise Port', 'Sorrento', 'Positano', 'Naples City Centre', 'Pompei', 'Amalfi', 'Ravello', 'Atrani', 'Caserta', 'Maiori', 'Nola', 'Paestum', 'Pisciotta', 'Pozzuoli', 'Praiano', 'Salerno'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Sorrento', 'Positano'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Naples Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Praiano', 'Rome City Centre', 'Salerno'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Naples Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Praiano', 'Rome City Centre', 'Salerno'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Pescara Airport', 'Pescara Cruise Port', 'Pescara Train Station', 'Pescara City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Naples Airport', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Naples Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Sorrento', 'Naples City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Naples Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Naples Airport', 'Naples Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Naples Airport', 'Pontone'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Naples Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Pompei', 'Amalfi', 'Atrani', 'Caserta', 'Fasano', 'Paestum', 'Pisciotta', 'Praiano', 'Ravello', 'Rome City Centre', 'Salerno', 'Sant Agnello'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Naples Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Naples Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Naples Airport', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Naples City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Naples Airport', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Naples City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Naples Airport', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Ravello'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Massa Lubrense'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Naples Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port', 'Naples Cruise Port', 'Naples Train Station', 'Salerno Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Pompei', 'Amalfi', 'Florence City Centre', 'Ravello', 'Rome City Centre', 'Rome Fiumicino Hotel'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Naples Airport', 'Rome Fiumicino Airport', 'Naples Cruise Port', 'Naples Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Naples Airport', 'Civitavecchia Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Amalfi', 'Rome City Centre', 'Salerno'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Naples Airport', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Pompei'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Naples Airport', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Pompei'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Naples Airport', 'Sorrento', 'Naples City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Naples Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port', 'Naples Cruise Port', 'Naples Train Station', 'Sorrento', 'Positano', 'Naples City Centre', 'Pompei', 'Amalfi', 'Caserta', 'Florence City Centre', 'Praiano', 'Ravello', 'Rome City Centre', 'Salerno'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Naples Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    puts 'Pick Up Locations for Budapest'
    pick_ups = City.find_by(name: 'Budapest').pick_up_locations.reorder('id asc')
    ['Vienna Airport', 'Zagreb Airport', 'Budapest Cruise Port', 'Budapest Train Station', 'Vienna Train Station', 'Budapest City Centre', 'Nagykanizsa', 'Badacsonytomaj', 'Balatonfured', 'Balatonlelle', 'Bratislava City Centre', 'Bukfurdo', 'Debrecen', 'Eger', 'God', 'Gyor', 'Heviz', 'Hungaroring', 'Kaposvar', 'Keszthely', 'Komarno', 'Komlo', 'Koprivnica', 'Pecs', 'Prague City Centre', 'Sarvar', 'Siofok', 'Szekesfehervar', 'Tihany', 'Vienna City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Budapest City Centre', 'Nagykanizsa', 'Pecs', 'Vonyarcvashegy', 'Alsopahok', 'Abrahamhegy', 'Badacsony', 'Badacsonytomaj', 'Balaton Ring', 'Balatonakali', 'Balatonakarattya', 'Balatonaliga', 'Balatonalmadi', 'Balatonbereny', 'Balatonboglar', 'Balatonfenyves', 'Balatonfoldvar', 'Balatonfured', 'Balatongyorok', 'Balatonkenese', 'Balatonkeresztur', 'Balatonlelle', 'Balatonmariafurdo', 'Balatonudvari', 'Balatonvilagos', 'Csopak', 'Felsopahok', 'Fonyod', 'Gyenesdias', 'Heviz', 'Keszthely', 'Revfulop', 'Siofok', 'Szantod', 'Tapolca', 'Tihany', 'Vienna City Centre', 'Zalaegerszeg', 'Zalakaros', 'Zamardi', 'Zanka'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Budapest Airport', 'Vienna Airport', 'Budapest City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Budapest Airport', 'Vienna Airport', 'Budapest City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Budapest Airport', 'Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Budapest Airport', 'Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Budapest Airport', 'Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Belgrade Airport', 'Bratislava Airport', 'Budapest Airport', 'Gdansk Airport', 'Katowice Airport', 'Krakow Balice Airport', 'Osijek Airport', 'Sarmellek Balaton Airport', 'Vienna Airport', 'Wroclaw Airport', 'Zagreb Airport', 'Budapest Cruise Port', 'Budapest Train Station', 'Gdansk City Centre', 'Katowice City Centre', 'Krakow City Centre', 'Vienna City Centre', 'Wroclaw City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Budapest Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Bratislava Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Budapest Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Budapest Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Budapest Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Bratislava Airport', 'Budapest Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Vienna Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Budapest Airport', 'Sarmellek Balaton Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Budapest Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Budapest Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Budapest Airport', 'Sarmellek Balaton Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Budapest Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Bratislava Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Sarmellek Balaton Airport', 'Zagreb Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Belgrade Airport', 'Budapest Airport', 'Osijek Airport', 'Vienna Airport', 'Zagreb Airport', 'Vienna City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Budapest Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Budapest Airport', 'Osijek Airport', 'Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Bratislava Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Belgrade Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Budapest Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Zagreb Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Bratislava Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Sarmellek Balaton Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Budapest Airport', 'Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Sarmellek Balaton Airport', 'Vienna Airport', 'Zagreb Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Sarmellek Balaton Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    puts 'Pick Up Locations for Bristol'
    pick_ups = City.find_by(name: 'Bristol').pick_up_locations.reorder('id asc')
    ['Cardiff Airport', 'Filton Airport', 'London City Airport', 'London Gatwick Airport', 'London Heathrow Airport', 'London Luton Airport', 'London Stansted Airport', 'Portsmouth Cruise Port', 'Southampton Cruise Port', 'Bristol City Centre', 'Bath', 'Cheltheham', 'Westbury', 'Clevedon', 'Cardiff City Centre', 'Almondsbury', 'Aztec West', 'Bournemouth', 'Bradford on Avon', 'Bradley Stoke', 'Bridgend', 'Burham on sea ', 'Chepstow', 'Chippenham', 'Chipping Sodbury', 'Clifton', 'Clutton', 'Coalpit Heath', 'Cwmbran', 'Downend', 'Emersons Green', 'Exeter', 'Filton', 'Fishpnds', 'Frampton Cattrel', 'Frenchay', 'Frome', 'Glascoed', 'Glastonbury', 'Gloucester', 'Hambrook', 'Kingswood', 'Lakeland', 'Mangotsfield', 'Nailsea', 'Newport', 'North Bovey', 'Oxford', 'Paignton', 'Patchway', 'Plymouth', 'Porthcawl', 'Powick', 'Pucklechurch', 'Soutmead', 'Staple Hill', 'Stapleton', 'Stoke Gifford', 'Swansea', 'Swindon', 'Tample Meads', 'Taunton', 'Tavistock', 'Thornbury', 'Trowbridge', 'Warmley', 'Westerleigh', 'Weston super Mare', 'Weymouth', 'Winterbourne'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Bristol Airport', 'Bristol City Centre', 'Bath', 'Cheltheham'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Bristol Airport', 'Cardiff Airport', 'Filton Airport', 'London City Airport', 'London Gatwick Airport', 'London Heathrow Airport', 'London Luton Airport', 'London Stansted Airport', 'Portsmouth Cruise Port', 'Southampton Cruise Port', 'Bristol City Centre', 'Bath', 'Cheltheham', 'Westbury', 'Clevedon', 'Almondsbury', 'Aztec West', 'Bradford on Avon', 'Bradley Stoke', 'Burham on sea ', 'Cardiff City Centre', 'Chippenham', 'Chipping Sodbury', 'Clifton', 'Coalpit Heath', 'Downend', 'Emersons Green', 'Exeter', 'Filton', 'Fishpnds', 'Frampton Cattrel', 'Frenchay', 'Frome', 'Glastonbury', 'Gloucester', 'Hambrook', 'Kingswood', 'Mangotsfield', 'Nailsea', 'Newport', 'Oxford', 'Patchway', 'Plymouth', 'Pucklechurch', 'Soutmead', 'Staple Hill', 'Stapleton', 'Stoke Gifford', 'Swansea', 'Swindon', 'Tample Meads', 'Taunton', 'Thornbury', 'Trowbridge', 'Warmley', 'Westerleigh', 'Weston super Mare', 'Winterbourne'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Bristol Airport', 'Filton Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Bristol Airport', 'Filton Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Bristol Airport', 'London City Airport', 'London Gatwick Airport', 'London Heathrow Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Bristol Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Bristol Airport', 'Bristol City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['London Heathrow Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    puts 'Pick Up Locations for Bilbao'
    pick_ups = City.find_by(name: 'Bilbao').pick_up_locations.reorder('id asc')
    ['San Sebastian Airport', 'Santander Airport', 'Bilbao City Centre', 'Vitoria', 'Biarritz - private', 'S Domingo de la Calzada', 'Logrono', 'Algorta', 'Amorebieta', 'Amurrio', 'Andoain', 'Arrigorriaga', 'Azkoitia', 'Azpeitia', 'Balmaseda', 'Barakaldo', 'Basauri', 'Bayonne', 'Beasain', 'Berango', 'Bergara', 'Bermeo', 'Biarritz', 'Bordeaux City Centre', 'Burgos', 'Castro Urdiales', 'Corunna', 'Cruces', 'Durango', 'Eibar', 'Elciego', 'Elorrio', 'Erandio', 'Ermua', 'Estella', 'Galdakao', 'Getaria', 'Guenes', 'Guernica', 'Hendaye', 'Hernani', 'Hondarribia', 'Irun', 'Jaca', 'Laguardia', 'Laredo', 'Las Arenas', 'Legazpi', 'Leioa', 'Lekeitio', 'Lemoa', 'Leon', 'Liencres', 'Llodio', 'Lourdes', 'Madrid City Centre', 'Medina de Pomar', 'Mondragon', 'Mundaka', 'Mutriku', 'Noja', 'Olite', 'Onati', 'Ondarroa', 'Orio', 'Ortuella', 'Oviedo', 'Palencia', 'Pamplona', 'Pasajes', 'Plentzia', 'Portugalete', 'Puente la Reina', 'Reinosa', 'San Sebastian', 'San Sebastian de Garabandal', 'Santander City Centre', 'Santillana del Mar', 'Santona', 'Santurtzi', 'Sestao', 'Sodupe', 'Sopelana', 'St Jean de Luz', 'Tolosa', 'Torrelavega', 'Villarcayo', 'Yurre', 'Zarautz', 'Zumaia', 'Zumarraga'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bilbao Airport', 'San Sebastian Airport', 'Bilbao City Centre', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Bilbao Airport', 'San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Bilbao Airport', 'Pau Airport', 'San Sebastian Airport', 'Santander Airport', 'Bilbao City Centre', 'Vitoria', 'Biarritz - private', 'S Domingo de la Calzada', 'Amurrio', 'Andoain', 'Azkoitia', 'Azpeitia', 'Balmaseda', 'Bayonne', 'Beasain', 'Bergara', 'Biarritz', 'Bordeaux City Centre', 'Burgos', 'Castro Urdiales', 'Castrojeriz', 'Corunna', 'Eibar', 'Elciego', 'Elorrio', 'Ermua', 'Estella', 'Hendaye', 'Hernani', 'Hondarribia', 'Irun', 'Laguardia', 'Laredo', 'Leon', 'Logrono', 'Lourdes', 'Madrid City Centre', 'Mondragon', 'Onati', 'Ondarroa', 'Oviedo', 'Palencia', 'Pamplona', 'Pasajes', 'Pau', 'San Sebastian', 'San Sebastian de Garabandal', 'Santander City Centre', 'Torrelavega'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Bilbao Airport', 'Porto Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Bilbao Airport', 'Bilbao City Centre', 'Hendaye'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Biarritz Airport', 'Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Biarritz Airport', 'Bilbao Airport', 'Bordeaux Airport', 'Bordeaux Train Station', 'Bilbao City Centre', 'Biarritz', 'Bordeaux City Centre', 'Elciego'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Bilbao Airport', 'Santander Airport', 'Bilbao City Centre', 'Santander City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Biarritz Airport', 'Bilbao Airport', 'San Sebastian Airport', 'Bilbao City Centre', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Bilbao Airport', 'San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Bilbao Airport', 'Santander Airport', 'Bilbao City Centre', 'Santander City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Porto Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Porto Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Bilbao Airport', 'Bilbao City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Bilbao Airport', 'San Sebastian Airport', 'San Sebastian'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Bilbao Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    puts 'Pick Up Locations for Tenerife'
    pick_ups = City.find_by(name: 'Tenerife').pick_up_locations.reorder('id asc')
    ['Tenerife South Airport', 'Los Cristianos Cruise Port', 'Santa Cruz Cruise Port', 'Playa Paraiso ', 'Abades', 'Abama', 'Adeje Village', 'Alcala', 'Amarilla Golf Resort', 'Arafo', 'Arico', 'Arona Village', 'Bajamar', 'Buenavista', 'Callao Salvaje', 'Candelaria', 'Chayofa', 'Costa Adeje', 'Costa Del Silencio', 'El Medano', 'El Tanque', 'Garachico', 'Golf del Sur', 'Granadilla', 'Guia de Isora', 'Guimar', 'Icod de los Vinos', 'La Caleta', 'La Guancha', 'La Laguna', 'La Matanza', 'La Orotava', 'La Quinta', 'La Victoria', 'Las Caletillas', 'Los Abrigos', 'Los Cristianos', 'Los Gigantes', 'Los Realejos', 'Los Silos', 'Marazul', 'Masca', 'Palm Mar', 'Parador Las Canadas Teide', 'Playa De La Arena', 'Playa De Las Americas', 'Playa Fanabe', 'Playa San Juan', 'Poris de Abona', 'Puertito de Guimar', 'Puerto De Santiago', 'Puerto de la Cruz', 'Punta Del Hidalgo', 'Radazul', 'Roques De Fasnia', 'San Isidro Tenerife', 'San Juan de la Rambla', 'San Miguel Tenerife', 'Santa Cruz Tenerife', 'Santa Ursula', 'Santiago Del Teide', 'Tabaiba', 'Tacoronte', 'Tegueste', 'Ten bel Las Galletas', 'Valle De San Lorenzo', 'Valle Guerra', 'Vilaflor'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Tenerife North Airport', 'Los Cristianos Cruise Port', 'Santa Cruz Cruise Port', 'Playa Paraiso ', 'Abades', 'Abama', 'Adeje Village', 'Alcala', 'Aguamansa', 'Amarilla Golf Resort', 'Arafo', 'Arico', 'Arona Village', 'Bajamar', 'Buenavista', 'Callao Salvaje', 'Candelaria', 'Chayofa', 'Chio Tenerife', 'Costa Del Silencio', 'El Medano', 'El Sauzal', 'El Tanque', 'Fanabe', 'Garachico', 'Golf De Las Americas', 'Golf del Sur', 'Granadilla', 'Guargacho', 'Guia de Isora', 'Guimar', 'Icod de los Vinos', 'La Caleta', 'La Esperanza', 'La Guancha', 'La Laguna', 'La Matanza', 'La Orotava', 'La Quinta', 'La Victoria', 'Las Caletillas', 'Las Canadas del Teide', 'Los Abrigos', 'Los Cristianos', 'Los Gigantes', 'Los Realejos', 'Los Silos', 'Marazul', 'Masca', 'Palm Mar', 'Parador Las Canadas Teide', 'Playa De La Arena', 'Playa De Las Americas', 'Playa Fanabe', 'Playa Floral', 'Playa San Juan', 'Playa San Marcos', 'Poris de Abona', 'Puertito de Guimar', 'Puerto De Santiago', 'Puerto de la Cruz', 'Punta Del Hidalgo', 'Radazul', 'Roques De Fasnia', 'San Andres', 'San Eugenio', 'San Isidro Tenerife', 'San Juan de la Rambla', 'San Miguel Tenerife', 'Santa Cruz Tenerife', 'Santa Ursula', 'Santiago Del Teide', 'Tabaiba', 'Tacoronte', 'Tamaimo', 'Taucho', 'Tegueste', 'Tejina', 'Ten bel Las Galletas', 'Torviscas', 'Valle De San Lorenzo', 'Valle Guerra', 'Vilaflor'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Tenerife North Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Tenerife North Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Murcia Airport', 'Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[77]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[78]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[79]
    end

    ['Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[80]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[81]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[82]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[83]
    end

    ['Tenerife North Airport', 'Tenerife South Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[84]
    end

    puts 'Pick Up Locations for Girona'
    pick_ups = City.find_by(name: 'Girona').pick_up_locations.reorder('id asc')
    ['Barcelona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Roses', 'Girona City Centre', 'Cadaques', 'Caldes de Malavella', 'Empuriabrava', 'Aixirivall', 'Andorra la Vella', 'Ansalonga Andorra', 'Anyos Andorra', 'Arans Andorra', 'Arcalis Andorra', 'Argeles sur Mer', 'Arinsal Andorra', 'Auvinya Andorra', 'Barcelona City Centre', 'Begur', 'Benicassim', 'Besalu', 'Blanes', 'Calella', 'Calella de Palafrugell', 'Calonge', 'Cambrils', 'Canillo Andorra', 'Castelldefels', 'Castello d Empuries', 'Colomers', 'El Port de la Selva', 'El Serrat Andorra', 'El Tarter Andorra', 'Encamp Andorra', 'Engolasters Andorra', 'Erts Andorra', 'Escala', 'Escaldes Engordany Andorra', 'Estartit', 'Figueres', 'Grau Roig Andorra', 'Incles Andorra', 'Juberri Andorra', 'L Aldosa Andorra', 'La Cortinada Andorra', 'La Margineda Andorra', 'La Masella', 'La Massana Andorra', 'La Molina', 'Llafranc Palafrugell', 'Llanca', 'Llofriu', 'Lloret de Mar', 'Llorts Andorra', 'Malgrat de Mar', 'Montpellier City Centre', 'Nagol Andorra', 'Ordino Andorra', 'Osseja', 'Pal Andorra', 'Palafrugell', 'Palamos', 'Pals', 'Pas de la Casa Andorra', 'Perpignan', 'Pineda de Mar', 'Puigcerda', 'S Agaro', 'Salou', 'Sant Antoni de Calonge', 'Sant Feliu de Guixols', 'Sant Julia de Loria Andorra', 'Sant Pere Pescador', 'Santa Susanna', 'Sispony Andorra', 'Sitges', 'Soldeu Andorra', 'Sornas Andorra', 'Tamariu Begur', 'Torroella de Montgri', 'Tossa de Mar', 'Vallter', 'Xixerella Andorra'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Barcelona Airport', 'Girona Airport', 'Pau Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Girona Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Girona Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Girona Airport', 'Toulouse Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Barcelona Airport', 'Girona Airport', 'Pau Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Barcelona Airport', 'Girona Airport', 'Pau Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Girona Airport', 'Toulouse Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Girona Airport', 'Toulouse Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Barcelona Airport', 'Girona Airport', 'Pau Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Roses', 'Girona City Centre', 'Cadaques', 'Caldes de Malavella', 'Ansalonga Andorra', 'Anyos Andorra', 'Arans Andorra', 'Arcalis Andorra', 'Argeles sur Mer', 'Arinsal Andorra', 'Auvinya Andorra', 'Barcelona City Centre', 'Begur', 'Benicassim', 'Besalu', 'Blanes', 'Calella de Palafrugell', 'Calonge', 'Cambrils', 'Canillo Andorra', 'Castelldefels', 'Castello d Empuries', 'Colomers', 'El Port de la Selva', 'El Serrat Andorra', 'El Tarter Andorra', 'Empuriabrava', 'Encamp Andorra', 'Engolasters Andorra', 'Erts Andorra', 'Escala', 'Escaldes Engordany Andorra', 'Estartit', 'Figueres', 'Grau Roig Andorra', 'Incles Andorra', 'Juberri Andorra', 'L Aldosa Andorra', 'La Cortinada Andorra', 'La Margineda Andorra', 'La Masella', 'La Massana Andorra', 'La Molina', 'Llafranc Palafrugell', 'Llanca', 'Llofriu', 'Lloret de Mar', 'Llorts Andorra', 'Malgrat de Mar', 'Nagol Andorra', 'Ordino Andorra', 'Pal Andorra', 'Palafrugell', 'Palamos', 'Pals', 'Pas de la Casa Andorra', 'Perpignan', 'Pineda de Mar', 'Puigcerda', 'S Agaro', 'Salou', 'Sant Antoni de Calonge', 'Sant Feliu de Guixols', 'Sant Julia de Loria Andorra', 'Sant Pere Pescador', 'Santa Susanna', 'Sispony Andorra', 'Sitges', 'Soldeu Andorra', 'Sornas Andorra', 'Tamariu Begur', 'Torroella de Montgri', 'Tossa de Mar', 'Vallter', 'Xixerella Andorra'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Girona Airport', 'Toulouse Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Girona Airport', 'Toulouse Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Girona Airport', 'Toulouse Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Girona Airport', 'Toulouse Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Girona Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Barcelona Airport', 'Girona Airport', 'Pau Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Girona Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Girona Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Girona Airport', 'Toulouse Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Girona Airport', 'Toulouse Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Barcelona Airport', 'Girona Airport', 'Pau Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Barcelona Airport', 'Girona Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Barcelona Airport', 'Girona Airport', 'Pau Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre', 'Pau'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Girona Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Barcelona Airport', 'Girona Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Barcelona Airport', 'Toulouse Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Barcelona Airport', 'Girona Airport', 'Barcelona Cruise Port', 'Platja d Aro', 'Barcelona City Centre', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Girona Airport', 'Platja d Aro', 'Girona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Barcelona Airport', 'Barcelona Cruise Port', 'Barcelona City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    puts 'Pick Up Locations for Lisbon'
    pick_ups = City.find_by(name: 'Lisbon').pick_up_locations.reorder('id asc')
    ['Porto Airport', 'Belem Cruise Port', 'Lisbon Cruise Port', 'Lisbon City Centre', 'Cascais', 'Lagos', 'Estoril', 'Sintra', 'Fatima', 'Albufeira', 'Alcobaca', 'Alcochete', 'Algarve', 'Aveiro', 'Azinhaga', 'Badajoz', 'Batalha', 'Beja City Centre', 'Bombarral', 'Bussaco', 'Caldas da Rainha', 'Castelo Branco', 'Charneca da Caparica', 'Coimbra', 'Colares', 'Costa da Caparica', 'Ericeira', 'Evora', 'Faro City Centre', 'Figueira da Foz', 'Foros de Salvaterra', 'Foz do Arelho', 'Fundao', 'Guimaraes', 'Guincho', 'Leiria', 'Luso', 'Mafra', 'Marinha Grande', 'Mindelo', 'Miraflores', 'Montijo', 'Nazare', 'Obidos', 'Odemira', 'Oeiras', 'Paco de Arcos', 'Palmela', 'Penha Longa Golf Resort', 'Peniche', 'Portimao', 'Porto City Centre', 'Praia Grande', 'Praia del Rey', 'Queijas', 'Queluz', 'Salir do Porto', 'Santa Cruz', 'Santa Iria da Azoia', 'Santa Maria de Belem', 'Santarem', 'Santiago de Cacem', 'Santo Estevao', 'Sao Martinho do Porto', 'Seixal', 'Sesimbra', 'Setubal', 'Sevilha', 'Silves', 'Sines', 'Tomar', 'Torres Vedras', 'Troia by Ferry', 'Troia by road', 'Tui', 'Turcifal', 'Vieira de Leiria', 'Vilamoura', 'Villa Nova de Milfontes'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Lisbon Airport', 'Porto Airport', 'Lisbon City Centre', 'Cascais', 'Lagos', 'Estoril', 'Sintra', 'Fatima', 'Albufeira', 'Alcobaca', 'Alcochete', 'Algarve', 'Aveiro', 'Badajoz', 'Batalha', 'Beja City Centre', 'Bombarral', 'Bussaco', 'Caldas da Rainha', 'Castelo Branco', 'Coimbra', 'Colares', 'Costa da Caparica', 'Ericeira', 'Evora', 'Faro City Centre', 'Figueira da Foz', 'Foz do Arelho', 'Guincho', 'Leiria', 'Mafra', 'Miraflores', 'Nazare', 'Obidos', 'Oeiras', 'Paco de Arcos', 'Palmela', 'Peniche', 'Portimao', 'Porto City Centre', 'Praia Grande', 'Praia del Rey', 'Queijas', 'Santa Iria da Azoia', 'Santarem', 'Sao Martinho do Porto', 'Sesimbra', 'Setubal', 'Sevilha', 'Sines', 'Tomar', 'Vilamoura'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Lisbon City Centre', 'Cascais', 'Lagos', 'Estoril', 'Sintra', 'Albufeira', 'Alcobaca', 'Alcochete', 'Algarve', 'Aveiro', 'Badajoz', 'Batalha', 'Beja City Centre', 'Bombarral', 'Bussaco', 'Caldas da Rainha', 'Castelo Branco', 'Coimbra', 'Colares', 'Costa da Caparica', 'Ericeira', 'Evora', 'Faro City Centre', 'Fatima', 'Figueira da Foz', 'Foz do Arelho', 'Guincho', 'Leiria', 'Mafra', 'Miraflores', 'Nazare', 'Obidos', 'Oeiras', 'Paco de Arcos', 'Palmela', 'Peniche', 'Portimao', 'Porto City Centre', 'Praia Grande', 'Praia del Rey', 'Queijas', 'Santa Iria da Azoia', 'Santarem', 'Sao Martinho do Porto', 'Sesimbra', 'Setubal', 'Sevilha', 'Sines', 'Tomar', 'Vilamoura'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Beja Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Beja Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Beja Airport', 'Lisbon Airport', 'Porto Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Beja Airport', 'Lisbon Airport', 'Porto Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Beja Airport', 'Lisbon Airport', 'Porto Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Beja Airport', 'Lisbon Airport', 'Porto Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Beja Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Beja Airport', 'Faro Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Beja Airport', 'Lisbon Airport', 'Porto Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Faro Airport', 'Lisbon Airport', 'Porto Airport', 'Lisbon Cruise Port', 'Lisbon City Centre', 'Cascais', 'Lagos', 'Estoril', 'Sintra', 'Albufeira', 'Alcobaca', 'Alcochete', 'Algarve', 'Aveiro', 'Badajoz', 'Batalha', 'Beja City Centre', 'Bombarral', 'Bussaco', 'Caldas da Rainha', 'Castelo Branco', 'Coimbra', 'Colares', 'Costa da Caparica', 'Ericeira', 'Evora', 'Faro City Centre', 'Fatima', 'Figueira da Foz', 'Foz do Arelho', 'Guincho', 'Leiria', 'Mafra', 'Miraflores', 'Nazare', 'Obidos', 'Oeiras', 'Paco de Arcos', 'Palmela', 'Penha Longa Golf Resort', 'Peniche', 'Portimao', 'Porto City Centre', 'Praia Grande', 'Praia del Rey', 'Private tour of Lisbon', 'Queijas', 'Santa Iria da Azoia', 'Santarem', 'Sao Martinho do Porto', 'Sesimbra', 'Setubal', 'Sevilha', 'Sines', 'Sintra Private Tour', 'Tomar', 'Tui', 'Vilamoura'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Lisbon Airport', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Beja Airport', 'Faro Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre', 'Cascais', 'Sintra'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre', 'Setubal'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Beja Airport', 'Lisbon Airport', 'Lisbon Cruise Port', 'Lisbon Train Station', 'Lisbon City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Beja Airport', 'Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Beja Airport', 'Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Faro Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Lisbon Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    puts 'Pick Up Locations for Vienna'
    pick_ups = City.find_by(name: 'Vienna').pick_up_locations.reorder('id asc')
    ['Bratislava Airport', 'Budapest Airport', 'Innsbruck Airport', 'Prague Airport', 'Salzburg Airport', 'Budapest Cruise Port', 'Budapest Train Station', 'Innsbruck Train Station', 'Salzburg Train Station', 'Vienna Train Station', 'Vienna City Centre', 'Wiener Neustadt', 'Krems', 'Hopfgarten', 'Aderklaa', 'Amstetten', 'Bad Gastein', 'Bad Hall', 'Bad Ischl', 'Baden', 'Banska Bystrica', 'Bern City Centre', 'Biograd', 'Bisamberg', 'Bratislava City Centre', 'Breitenfurt', 'Brno', 'Bruck an der Grossglocknerstrasse', 'Bruck an der Leitha', 'Bruck an der Mur', 'Brunn am Gebirge', 'Budapest City Centre', 'Bukfurdo', 'Cesky Krumlov', 'Cortina d Ampezzo', 'Debrecen', 'Deutsch Wagram', 'Dubrovnik City Centre', 'Eisenstadt', 'Ellmau', 'Freistadt', 'Furstenfeld', 'Gablitz', 'Gerasdorf', 'Gmund', 'Gmunden', 'Graz', 'Gross Enzersdorf', 'Guntramsdorf', 'Gussing', 'Gyor', 'Hagenbrunn', 'Hainburg', 'Hainburg an der Donau', 'Halaszi', 'Heviz', 'Himberg', 'Hinterbruhl', 'Hinterglemm', 'Innsbruck City Centre', 'Interlaken', 'Ischgl', 'Kaprun', 'Katowice City Centre', 'Keszthely', 'Kirchberg am Wechsel', 'Kitzbuhel', 'Klagenfurt', 'Klagenfurt City Centre', 'Klosterneuburg', 'Kohfidisch', 'Korneuburg', 'Kosice', 'Krakow City Centre', 'Kremnica', 'Langenzersdorf', 'Lech am Arlberg', 'Leogang', 'Leopoldsdorf', 'Lienz', 'Liesing', 'Limbach', 'Linz ', 'Ljubljana City Centre', 'Lugano City Centre', 'Luzern', 'Maria Alm', 'Maria Worth', 'Maribor', 'Martin', 'Mauerbach', 'Mayrhofen', 'Milan City Centre', 'Modling', 'Munchendorf', 'Munich City Centre', 'Murter', 'Neusiedl am See', 'Nitra', 'Obertauern', 'Oberwart', 'Parndorf', 'Passau', 'Pecs', 'Perchtoldsdorf', 'Piestany', 'Poprad', 'Portschach am Worthersee', 'Prague City Centre', 'Pressbaum', 'Pula', 'Purkersdorf', 'Raasdorf', 'Ried im Innkreis', 'Rojtokmuzsaj', 'Rome City Centre', 'Rust Austria', 'Saalbach', 'Saalfelden', 'Salzburg City Centre', 'Sarvar', 'Schladming', 'Seefeld in Tirol', 'Semmering', 'Senec', 'Solden', 'Sopron', 'Spittal an der Drau', 'Spitz', 'Split City Centre', 'St Anton am Arlberg', 'St Polten', 'Sternberk', 'Steyr', 'Stockerau', 'Szeged', 'Szekesfehervar', 'Szombathely', 'Tapolca', 'Trencianske Teplice', 'Trencin', 'Trnava', 'Trogir', 'Unzmarkt Frauenburg', 'Velden am Worther See', 'Venice City Hotels', 'Villach', 'Wagrain', 'Waidhofen An Der Ybbs', 'Weidling', 'Wels', 'Wiener Neudorf', 'Wolfsgraben', 'Zagreb City Centre', 'Zalakaros', 'Zell am See', 'Zilina', 'Zwettl'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Bratislava Airport', 'Budapest Airport', 'Vienna Airport', 'Vienna City Centre', 'Bratislava City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Vienna City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Ljubljana Airport', 'Salzburg Airport', 'Strasbourg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Vienna City Centre', 'Bled', 'Ljubljana City Centre', 'Portoroz', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Vienna City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Vienna City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Klagenfurt Airport', 'Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Innsbruck Airport', 'Ljubljana Airport', 'Salzburg Airport', 'Vienna Airport', 'Zagreb Airport', 'Innsbruck Train Station', 'Salzburg Train Station', 'Vienna City Centre', 'Bled', 'Innsbruck City Centre', 'Ljubljana City Centre', 'Portoroz', 'Salzburg City Centre', 'Zagreb City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Vienna Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Vienna Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Vienna City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Basel Airport', 'Bern Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Vienna Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Basel Airport', 'Bern Airport', 'Salzburg Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Salzburg City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Vienna City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Vienna City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Innsbruck Airport', 'Innsbruck Train Station', 'Innsbruck City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Vienna Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Ljubljana Airport', 'Vienna Airport', 'Vienna City Centre', 'Bled', 'Ljubljana City Centre', 'Portoroz'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Bratislava Airport', 'Brno Airport', 'Budapest Airport', 'Innsbruck Airport', 'Ljubljana Airport', 'Munich Airport', 'Prague Airport', 'Salzburg Airport', 'Sarmellek Balaton Airport', 'Vienna Airport', 'Wroclaw Airport', 'Zagreb Airport', 'Bratislava Train Station', 'Innsbruck Train Station', 'Salzburg Train Station', 'Vienna Train Station', 'Vienna City Centre', 'Wiener Neustadt', 'Aderklaa', 'Amstetten', 'Bad Gastein', 'Bad Hall', 'Bad Ischl', 'Baden', 'Banska Bystrica', 'Bern City Centre', 'Biograd', 'Bisamberg', 'Bled', 'Bratislava City Centre', 'Breitenfurt', 'Brno', 'Bruck an der Grossglocknerstrasse', 'Bruck an der Mur', 'Brunn am Gebirge', 'Budapest City Centre', 'Bukfurdo', 'Cesky Krumlov', 'Cortina d Ampezzo', 'Debrecen', 'Deutsch Wagram', 'Dubrovnik City Centre', 'Eisenstadt', 'Ellmau', 'Freistadt', 'Furstenfeld', 'Gablitz', 'Gerasdorf', 'Gmund', 'Gmunden', 'Graz', 'Gross Enzersdorf', 'Guntramsdorf', 'Gussing', 'Gyor', 'Hagenbrunn', 'Hainburg', 'Hainburg an der Donau', 'Heviz', 'Himberg', 'Hinterbruhl', 'Hinterglemm', 'Innsbruck City Centre', 'Interlaken', 'Ischgl', 'Kaprun', 'Katowice City Centre', 'Keszthely', 'Kitzbuhel', 'Klagenfurt', 'Klagenfurt City Centre', 'Klosterneuburg', 'Korneuburg', 'Kosice', 'Krakow City Centre', 'Kremnica', 'Krems', 'Langenzersdorf', 'Lech am Arlberg', 'Leogang', 'Leopoldsdorf', 'Lienz', 'Limbach', 'Linz ', 'Ljubljana City Centre', 'Lugano City Centre', 'Luzern', 'Maria Alm', 'Martin', 'Mauerbach', 'Mayrhofen', 'Milan City Centre', 'Modling', 'Munchendorf', 'Munich City Centre', 'Murter', 'Neusiedl am See', 'Nitra', 'Obertauern', 'Parndorf', 'Passau', 'Pecs', 'Perchtoldsdorf', 'Piestany', 'Poprad', 'Portoroz', 'Portschach am Worthersee', 'Prague City Centre', 'Pressbaum', 'Pula', 'Purkersdorf', 'Raasdorf', 'Ried im Innkreis', 'Rojtokmuzsaj', 'Rome City Centre', 'Rust Austria', 'Saalbach', 'Saalfelden', 'Salzburg City Centre', 'Sarvar', 'Schladming', 'Seefeld in Tirol', 'Semmering', 'Senec', 'Solden', 'Sopron', 'Spittal an der Drau', 'Split City Centre', 'St Anton am Arlberg', 'St Polten', 'Sternberk', 'Steyr', 'Stockerau', 'Szeged', 'Szekesfehervar', 'Szombathely', 'Tapolca', 'Trencianske Teplice', 'Trnava', 'Trogir', 'Velden am Worther See', 'Venice City Hotels', 'Villach', 'Wagrain', 'Weidling', 'Wels', 'Wiener Neudorf', 'Wolfsgraben', 'Wroclaw City Centre', 'Zagreb City Centre', 'Zalakaros', 'Zell am See', 'Zilina', 'Zwettl'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Vienna Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Salzburg Airport', 'Salzburg Train Station', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Vienna City Centre', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Vienna Airport', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Salzburg Airport', 'Vienna Airport', 'Salzburg Train Station', 'Vienna City Centre', 'Salzburg City Centre', 'Vienna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    puts 'Pick Up Locations for Rome'
    pick_ups = City.find_by(name: 'Rome').pick_up_locations.reorder('id asc')
    ['Florence Airport', 'Naples Airport', 'Pisa Airport', 'Rome Fiumicino Airport', 'Anzio Ferry Port', 'Civitavecchia Cruise Port', 'Livorno Cruise Port', 'Naples Cruise Port', 'Rome Termini Train Station', 'Rome City Centre', 'Rome Suburbs', 'Civitavecchia Hotel', 'Camping Fabulous', 'Fiumicino', 'Pomezia', 'Acquasparta', 'Amalfi', 'Ancona', 'Ansedonia', 'Arezzo', 'Assisi', 'Bracciano', 'Camping Flaminio Village', 'Camping Happy Village', 'Camping Village Roma', 'Cascia', 'Colleferro', 'Cortona', 'Fabrica di Roma', 'Fiano Romano', 'Florence City Centre', 'Fondi', 'Formia', 'Frascati', 'Frosinone', 'Greve in Chianti', 'Grottaferrata', 'Guidonia Montecelio', 'L Aquila', 'Ladispoli', 'Latina', 'Lavinio', 'Montalcino', 'Montalto di Castro', 'Monte Caminetto', 'Montepulciano', 'Naples City Centre', 'Orvieto', 'Ostia', 'Palombara Sabina', 'Perugia', 'Pisa City Centre', 'Porto Ercole', 'Porto Santo Stefano', 'Positano', 'Prato', 'Rocca di Mezzo', 'Roccaraso', 'Sabaudia', 'San Felice Circeo', 'San Gimignano', 'Santa Marinella', 'Seven Hills Camping', 'Siena', 'Sorrento', 'Sperlonga', 'Terracina', 'Tivoli', 'Trevignano Romano', 'Valmontone'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Florence Airport', 'Naples Airport', 'Pisa Airport', 'Rome Ciampino Airport', 'Anzio Ferry Port', 'Civitavecchia Cruise Port', 'Livorno Cruise Port', 'Naples Cruise Port', 'Rome Termini Train Station', 'Rome City Centre', 'Rome Suburbs', 'Civitavecchia Hotel', 'Camping Fabulous', 'Fiumicino', 'Acquasparta', 'Amalfi', 'Ancona', 'Ansedonia', 'Anzio', 'Arezzo', 'Assisi', 'Baia Domizia', 'Bracciano', 'Camping Flaminio Village', 'Camping Happy Village', 'Camping Village Roma', 'Capestrano', 'Cascia', 'Cassino', 'Castagneto Carducci', 'Castel Gandolfo', 'Castellammare di Stabia', 'Cecina', 'Chieti', 'Colleferro', 'Cortona', 'Fabrica di Roma', 'Fiano Romano', 'Fiuggi', 'Florence City Centre', 'Fondi', 'Formia', 'Fornole', 'Frascati', 'Fregene', 'Frosinone', 'Gaeta', 'Gavarano', 'Greccio', 'Greve in Chianti', 'Grosseto', 'Grottaferrata', 'Guidonia Montecelio', 'L Aquila', 'Ladispoli', 'Latina', 'Lavinio', 'Lorenzana', 'Lunghezza', 'Marino', 'Montalcino', 'Montalto di Castro', 'Monte Porzio Catone', 'Montemerano', 'Montepulciano', 'Naples City Centre', 'Naples Ferry Port', 'Narni', 'Nettuno', 'Norcia', 'Orbetello', 'Orvieto', 'Ostia', 'Palombara Sabina', 'Perugia', 'Pescara City Centre', 'Pienza', 'Pisa City Centre', 'Pomezia', 'Ponzano Romano', 'Porto Ercole', 'Porto Santo Stefano', 'Positano', 'Pozzuoli', 'Prato', 'Punta Ala', 'Rocca di Mezzo', 'Roccamare', 'Roccaraso', 'Rome Ciampino Airport Hotel', 'Rovere', 'Sabaudia', 'San Benedetto del Tronto', 'San Felice Circeo', 'San Gimignano', 'San Lorenzo Nuovo', 'San Vincenzo', 'Santa Marinella', 'Santopadre', 'Saturnia', 'Siena', 'Soriano nel Cimino', 'Sorrento', 'Sperlonga', 'Stimigliano', 'Tarquinia', 'Termoli', 'Terracina', 'Tivoli', 'Tortoreto', 'Trevignano Romano', 'Valmontone', 'Viareggio'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bologna Airport', 'Florence Airport', 'Forli Airport', 'Naples Airport', 'Pisa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Naples Cruise Port', 'Rome Termini Train Station', 'Rome City Centre', 'Rome Suburbs', 'Civitavecchia Hotel', 'Anzio', 'Bologna City Centre', 'Camping Fabulous', 'Fiumicino', 'Florence City Centre', 'Forli', 'Naples City Centre', 'Naples Ferry Port', 'Ostia', 'Pisa City Centre', 'Porto Ercole', 'Positano', 'Praiano', 'Rome Fiumicino Hotel', 'Sorrento', 'Tarquinia'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Rome Fiumicino Airport', 'Civitavecchia Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Florence Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Rome Ciampino Airport', 'Civitavecchia Cruise Port', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Pescara Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Pescara Cruise Port', 'Pescara Train Station', 'Rome City Centre', 'Pescara City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Rome Ciampino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Florence Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Pisa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre', 'Bergamo City Centre', 'Bologna City Centre', 'Forli', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Civitavecchia Cruise Port', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Pisa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Bologna Airport', 'Florence Airport', 'Forli Airport', 'Ljubljana Airport', 'Naples Airport', 'Rimini Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Vienna Airport', 'Anzio Ferry Port', 'Civitavecchia Cruise Port', 'Genoa Cruise Port', 'Livorno Cruise Port', 'Naples Cruise Port', 'Rome Termini Train Station', 'Rome City Centre', 'Rome Suburbs', 'Amalfi', 'Ancona', 'Ansedonia', 'Arezzo', 'Assisi', 'Baia Domizia', 'Bologna City Centre', 'Caserta', 'Castagneto Carducci', 'Castel Gandolfo', 'Castel Romano', 'Castellammare di Stabia', 'Cetona', 'Chieti', 'Cortona', 'Fabrica di Roma', 'Fasano', 'Fiumicino', 'Florence City Centre', 'Forli', 'Formia', 'Frosinone', 'Gaeta', 'Greve in Chianti', 'Grosseto', 'L Aquila', 'Ladispoli', 'Latina', 'Lavinio', 'Marina di Castagneto', 'Montalcino', 'Montalto di Castro', 'Montepulciano', 'Monterosso al Mare', 'Montisi', 'Naples City Centre', 'Orbetello', 'Orvieto', 'Ostia', 'Perugia', 'Pisterzo', 'Pomezia', 'Porto Ercole', 'Porto Santo Stefano', 'Positano', 'Praiano', 'Prato', 'Rimini', 'Sabaudia', 'San Felice Circeo', 'San Gimignano', 'Santa Marinella', 'Siena', 'Sorrento', 'Sperlonga', 'Terminillo', 'Terracina', 'Tivoli', 'Trevignano Romano', 'Valmontone', 'Vienna City Centre', 'Viterbo'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Pisa Airport', 'Rome Fiumicino Airport', 'Incisa val d Arno', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Rome Ciampino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Rome Fiumicino Airport', 'Civitavecchia Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Rome City Centre', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Pescara Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[77]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[78]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[79]
    end

    ['Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Rome City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[80]
    end

    puts 'Pick Up Locations for Murcia'
    pick_ups = City.find_by(name: 'Murcia').pick_up_locations.reorder('id asc')
    ['La Manga Club', 'Torrevieja', 'Cabo Roig', 'La Zenia', 'Playa Flamenca', 'Mar Menor Golf Resort', 'Albir', 'Alicante City Centre', 'Almoradi', 'Altea', 'Benidorm', 'Benissa', 'Bolnuevo', 'Cabo De Palos', 'Calp', 'Campello', 'Campoamor', 'Cartagena', 'Catral', 'Ciudad Quesada', 'Denia', 'El Valle Golf Resort', 'Elche', 'Formentera del Segura', 'Gandia', 'Guardamar', 'Hacienda Riquelme', 'Hacienda del Alamo', 'Isla Plana', 'Javea', 'La Azohia', 'La Finca Golf Resort', 'La Manga Strip', 'La Manga del Mar Menor', 'La Mata', 'La Nucia', 'La Roda Golf Resort', 'La Serena Golf Resort', 'La Tercia Club Resort', 'La Torre Golf', 'Los Alcazares', 'Los Montesinos', 'Los Nietos', 'Los Urrutias', 'Mar De Cristal', 'Mil Palmeras', 'Mojacar', 'Moraira', 'Mosa Trajectum', 'Murcia City Centre', 'Orihuela Costa', 'Peraleja Golf Resort', 'Pilar de la Horadada', 'Pinar de Campoverde', 'Playa Paraiso ', 'Puerto de Mazarron', 'Punta Prima Orihuela', 'Rojales', 'Roquetas de Mar', 'San Miguel de las Salinas', 'Santa Pola', 'Sucina', 'Torre de la Horadada', 'Vera Playa', 'Villamartin'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Almeria Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Almeria Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Alicante Airport', 'Almeria Airport', 'Madrid Airport', 'Murcia Airport', 'Almeria City Centre', 'Madrid City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Alicante Airport', 'Almeria Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Alicante Airport', 'Almeria Airport', 'Murcia Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Alicante Airport', 'Almeria Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Almeria City Centre', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Alicante Airport', 'Almeria Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Almeria City Centre', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Almeria Airport', 'Murcia Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Alicante Airport', 'Almeria Airport', 'Murcia Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Alicante Airport', 'Almeria Airport', 'Murcia Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Alicante Airport', 'Almeria Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Alicante Airport', 'Almeria Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Alicante Airport', 'Almeria Airport', 'Murcia Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Alicante Airport', 'Almeria Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Alicante Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Alicante Airport', 'Almeria Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Almeria Airport', 'Murcia Airport', 'Almeria City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[77]
    end

    ['Alicante Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[78]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[79]
    end

    ['Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[80]
    end

    ['Alicante Airport', 'Murcia Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[81]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[82]
    end

    ['Alicante Airport', 'Murcia Airport', 'Valencia Airport', 'Valencia Train Station', 'Valencia City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[83]
    end

    puts 'Pick Up Locations for Pisa'
    pick_ups = City.find_by(name: 'Pisa').pick_up_locations.reorder('id asc')
    ['Ancona Airport', 'Bologna Airport', 'Florence Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Venice Airport', 'Civitavecchia Cruise Port', 'Genoa Cruise Port', 'Livorno Cruise Port', 'Savona Cruise Port', 'Florence Train Station', 'Pisa Train Station', 'Forte dei Marmi', 'Viareggio', 'Lucca', 'Pisa City Centre', 'Casciana Terme', 'Marina di Massa', 'Abetone', 'Altopascio', 'Ancona', 'Aquilea', 'Arezzo', 'Artimino', 'Asciano', 'Aulla', 'Badia di Morrona', 'Bagni di Lucca', 'Bagni di Petriolo', 'Bagno Vignoni', 'Bagno a Ripoli', 'Balbano', 'Baragazza', 'Barga', 'Bellagio', 'Benabbio', 'Bibbona', 'Bologna City Centre', 'Bonassola', 'Borgo San Lorenzo', 'Borgo a Mozzano', 'Buonconvento', 'Camaiore', 'Campiglia Marittima', 'Campolemisi', 'Capannori', 'Cardoso', 'Carmignano', 'Carrara', 'Casatico', 'Casole D Elsa', 'Castagneto Carducci', 'Castagno', 'Castelfiorentino', 'Castellina in Chianti', 'Castelnuovo Berardenga', 'Castiglioncello', 'Cecina', 'Cellese in Chianti', 'Certaldo', 'Cetona', 'Cevoli', 'Ciciana', 'Cinquale', 'Cinque Terre', 'Corniglia', 'Cortona', 'Donnini', 'Donoratico', 'Empoli', 'Fiesole', 'Figline Valdarno', 'Fivizzano', 'Florence Airport  Hotels', 'Florence City Centre', 'Follonica', 'Fonteblanda', 'Fosciandora', 'Gaiole in Chianti', 'Gambassi Terme', 'Genoa City Centre', 'Ginestra Fiorentina', 'Greve in Chianti', 'Grosseto', 'Il Ciocco Resort', 'La Spezia', 'Lerici', 'Levanto', 'Licciana Nardi', 'Lido di Camaiore', 'Loro Ciuffenna', 'Marina di Castagneto', 'Marina di Grosseto', 'Marina di Pisa', 'Massa Marittima', 'Mastiano', 'Modena', 'Moneglia', 'Monsummano Terme', 'Montaione', 'Montalcino', 'Monte Bottigli', 'Montecarlo Lucca', 'Montecatini Terme', 'Montecatini Val di Cecina', 'Montemagno', 'Montepulciano', 'Monteriggioni', 'Monterosso al Mare', 'Montescudaio', 'Montespertoli', 'Montopoli', 'Nozzano Castello', 'Orciatico', 'Palazzo Sarteano', 'Peccioli', 'Perugia', 'Petrognano', 'Pienza', 'Pietrasanta', 'Pieve Fosciana', 'Piombino', 'Pistoia', 'Poggibonsi', 'Pontedera', 'Poppi', 'Porto Santo Stefano', 'Portofino', 'Portovenere', 'Pratello', 'Prato', 'Pratolino', 'Punta Ala', 'Radda in Chianti', 'Radicondoli', 'Rapallo', 'Reggello', 'Ribolla', 'Rignano sull Arno', 'Riomaggiore', 'Riparbella', 'Riva degli Etruschi', 'Riva del Sole', 'Roccamare', 'Rosignano', 'San Casciano Val di Pesa', 'San Gimignano', 'San Giuliano Terme', 'San Marcello Pistoiese', 'San Miniato', 'San Pietro Marcigliano', 'San Quirico d Orcia', 'San Vincenzo', 'Santa Lucia', 'Santa Margherita Ligure', 'Santa Maria del Giudice', 'Sarzana', 'Saturnia', 'Savona', 'Scarlino', 'Scarperia', 'Segromigno', 'Serre di Rapolano', 'Sestri Levante', 'Siena', 'Tavarnelle Val di Pesa', 'Tellaro', 'Tirrenia', 'Trequanda', 'Vada', 'Vagliagli', 'Volterra'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Ancona Airport', 'Bologna Airport', 'Florence Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Venice Airport', 'Civitavecchia Cruise Port', 'Genoa Cruise Port', 'Livorno Cruise Port', 'Savona Cruise Port', 'Florence Train Station', 'Pisa Train Station', 'Forte dei Marmi', 'Viareggio', 'Lucca', 'Pisa City Centre', 'Casciana Terme', 'Marina di Massa', 'Abetone', 'Altopascio', 'Ancona', 'Aquilea', 'Arezzo', 'Artimino', 'Asciano', 'Aulla', 'Badia di Morrona', 'Bagni di Lucca', 'Bagni di Petriolo', 'Bagno Vignoni', 'Bagno a Ripoli', 'Balbano', 'Baragazza', 'Barga', 'Bellagio', 'Benabbio', 'Bibbona', 'Bologna City Centre', 'Bonassola', 'Borgo San Lorenzo', 'Borgo a Mozzano', 'Buonconvento', 'Camaiore', 'Campiglia Marittima', 'Campolemisi', 'Capannori', 'Cardoso', 'Carmignano', 'Carrara', 'Casatico', 'Casole D Elsa', 'Castagneto Carducci', 'Castagno', 'Castelfiorentino', 'Castellina in Chianti', 'Castelnuovo Berardenga', 'Castiglioncello', 'Cecina', 'Cellese in Chianti', 'Certaldo', 'Cetona', 'Cevoli', 'Ciciana', 'Cinquale', 'Cinque Terre', 'Corniglia', 'Cortona', 'Donnini', 'Donoratico', 'Empoli', 'Fiesole', 'Figline Valdarno', 'Fivizzano', 'Florence Airport  Hotels', 'Florence City Centre', 'Follonica', 'Fonteblanda', 'Fosciandora', 'Gaiole in Chianti', 'Gambassi Terme', 'Genoa City Centre', 'Ginestra Fiorentina', 'Greve in Chianti', 'Grosseto', 'Il Ciocco Resort', 'La Spezia', 'Lerici', 'Levanto', 'Licciana Nardi', 'Lido di Camaiore', 'Loro Ciuffenna', 'Marina di Castagneto', 'Marina di Grosseto', 'Marina di Pisa', 'Massa Marittima', 'Mastiano', 'Modena', 'Moneglia', 'Monsummano Terme', 'Montaione', 'Montalcino', 'Monte Bottigli', 'Montecarlo Lucca', 'Montecatini Terme', 'Montecatini Val di Cecina', 'Montemagno', 'Montepulciano', 'Monteriggioni', 'Monterosso al Mare', 'Montescudaio', 'Montespertoli', 'Montopoli', 'Nozzano Castello', 'Orciatico', 'Palazzo Sarteano', 'Peccioli', 'Perugia', 'Petrognano', 'Pienza', 'Pietrasanta', 'Pieve Fosciana', 'Piombino', 'Pistoia', 'Poggibonsi', 'Pontedera', 'Poppi', 'Porto Santo Stefano', 'Portofino', 'Portovenere', 'Pratello', 'Prato', 'Pratolino', 'Punta Ala', 'Radda in Chianti', 'Radicondoli', 'Rapallo', 'Reggello', 'Ribolla', 'Rignano sull Arno', 'Riomaggiore', 'Riparbella', 'Riva degli Etruschi', 'Riva del Sole', 'Roccamare', 'Rosignano', 'San Casciano Val di Pesa', 'San Gimignano', 'San Giuliano Terme', 'San Marcello Pistoiese', 'San Miniato', 'San Pietro Marcigliano', 'San Quirico d Orcia', 'San Vincenzo', 'Santa Lucia', 'Santa Margherita Ligure', 'Santa Maria del Giudice', 'Sarzana', 'Saturnia', 'Savona', 'Scarlino', 'Scarperia', 'Segromigno', 'Serre di Rapolano', 'Sestri Levante', 'Siena', 'Tavarnelle Val di Pesa', 'Tellaro', 'Tirrenia', 'Trequanda', 'Vada', 'Vagliagli', 'Volterra'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Florence Airport', 'Geneva Airport', 'Pisa Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Florence Airport', 'Pisa Airport', 'Forte dei Marmi', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Florence Airport', 'Pisa Airport', 'Forte dei Marmi', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Florence Airport', 'Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Bologna Airport', 'Pisa Airport', 'Forte dei Marmi', 'Bologna City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Pisa Airport', 'Rome Fiumicino Airport', 'Forte dei Marmi', 'Pisa City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Bologna Airport', 'Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Florence Airport', 'Pisa Airport', 'Rome Fiumicino Airport', 'Forte dei Marmi', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Florence Airport', 'Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Milan Train Station', 'Forte dei Marmi', 'Viareggio', 'Florence City Centre', 'Lucca', 'Milan City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Florence Airport', 'Pisa Airport', 'Livorno Cruise Port', 'Forte dei Marmi', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Rome Fiumicino Airport', 'Florence Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Pisa Airport', 'Rimini Airport', 'Livorno Cruise Port', 'Forte dei Marmi', 'Viareggio', 'Ancona', 'Bologna City Centre', 'Certaldo', 'Florence City Centre', 'Forli', 'Gambassi Terme', 'Pisa City Centre', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Milan City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Pisa Airport', 'Livorno Cruise Port', 'Forte dei Marmi', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Florence Airport', 'Pisa Airport', 'Forte dei Marmi', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Rimini Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Venice Airport', 'Civitavecchia Cruise Port', 'Genoa Cruise Port', 'Livorno Cruise Port', 'Savona Cruise Port', 'Florence Train Station', 'Forte dei Marmi', 'Viareggio', 'Lucca', 'Pisa City Centre', 'Casciana Terme', 'Altopascio', 'Ancona', 'Arezzo', 'Artimino', 'Asciano', 'Aulla', 'Badia di Morrona', 'Bagni di Lucca', 'Bagno Vignoni', 'Bagno a Ripoli', 'Balbano', 'Barga', 'Bellagio', 'Benabbio', 'Bologna City Centre', 'Bonassola', 'Borgo San Lorenzo', 'Borgo a Mozzano', 'Buonconvento', 'Camaiore', 'Campiglia Marittima', 'Cardoso', 'Carrara', 'Casatico', 'Castagneto Carducci', 'Castagno', 'Castelfiorentino', 'Castellina in Chianti', 'Castelnuovo Berardenga', 'Castiglioncello', 'Cecina', 'Cellese in Chianti', 'Certaldo', 'Cetona', 'Cinquale', 'Cinque Terre', 'Corniglia', 'Cortona', 'Donnini', 'Donoratico', 'Fiesole', 'Figline Valdarno', 'Fivizzano', 'Florence City Centre', 'Follonica', 'Forli', 'Fosciandora', 'Gaiole in Chianti', 'Gambassi Terme', 'Genoa City Centre', 'Greve in Chianti', 'Grosseto', 'Il Ciocco Resort', 'La Spezia', 'Lerici', 'Levanto', 'Lido di Camaiore', 'Loro Ciuffenna', 'Marina di Castagneto', 'Marina di Massa', 'Marina di Pisa', 'Massa Marittima', 'Mastiano', 'Modena', 'Moneglia', 'Monsummano Terme', 'Montaione', 'Montalcino', 'Montecarlo Lucca', 'Montecatini Terme', 'Montemagno', 'Montepulciano', 'Monteriggioni', 'Monterosso al Mare', 'Montescudaio', 'Nozzano Castello', 'Palaia', 'Palazzo Sarteano', 'Perugia', 'Pienza', 'Pietrasanta', 'Piombino', 'Pistoia', 'Poggibonsi', 'Pontedera', 'Poppi', 'Porto Santo Stefano', 'Portofino', 'Portovenere', 'Prato', 'Punta Ala', 'Radda in Chianti', 'Radicondoli', 'Rapallo', 'Ribolla', 'Rignano sull Arno', 'Rimini', 'Riomaggiore', 'Riva degli Etruschi', 'Riva del Sole', 'Rosignano', 'San Casciano Val di Pesa', 'San Gimignano', 'San Giuliano Terme', 'San Miniato', 'San Quirico d Orcia', 'San Vincenzo', 'Santa Margherita Ligure', 'Sarzana', 'Saturnia', 'Savona', 'Sestri Levante', 'Siena', 'Tavarnelle Val di Pesa', 'Tellaro', 'Tirrenia', 'Trequanda', 'Vada', 'Vagliagli', 'Volterra'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Florence Airport', 'Pisa Airport', 'Forte dei Marmi', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Pisa Airport', 'Livorno Cruise Port', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Pisa Airport', 'Rome Fiumicino Airport', 'Forte dei Marmi', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Pisa Airport', 'Rome Fiumicino Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Pisa Airport', 'Livorno Cruise Port', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Milan Malpensa Airport', 'Pisa Airport', 'Rome Fiumicino Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    ['Milan Malpensa Airport', 'Pisa Airport', 'Rome Fiumicino Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[77]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[78]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[79]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[80]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[81]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[82]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[83]
    end

    ['Pisa Airport', 'Livorno Cruise Port', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[84]
    end

    ['Pisa Airport', 'Forte dei Marmi', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[85]
    end

    ['Bergamo Airport', 'Florence Airport', 'Genoa Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Rome Fiumicino Airport', 'Milan Train Station', 'Forte dei Marmi', 'Florence City Centre', 'Milan City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[86]
    end

    puts 'Pick Up Locations for Florence'
    pick_ups = City.find_by(name: 'Florence').pick_up_locations.reorder('id asc')
    ['Bologna Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Venice Airport', 'Verona Airport', 'Civitavecchia Cruise Port', 'Livorno Cruise Port', 'Florence Train Station', 'Milan Train Station', 'Florence City Centre', 'Fiesole', 'Montecatini Terme', 'Siena', 'Volterra', 'San Gimignano', 'Abetone', 'Arezzo', 'Asciano', 'Assisi', 'Bagni di Lucca', 'Bagno Vignoni', 'Bagno a Ripoli', 'Barberino di Mugello', 'Barga', 'Bibbona', 'Bologna City Centre', 'Borgo San Lorenzo', 'Bucine', 'Candeli', 'Casole D Elsa', 'Castellina in Chianti', 'Castelnuovo Berardenga', 'Castiglion Fiorentino', 'Cecina', 'Certaldo', 'Civitella Paganico', 'Colle Val D Elsa', 'Cortona', 'Donnini', 'Donoratico', 'Empoli', 'Figline Valdarno', 'Forte dei Marmi', 'Gaiole in Chianti', 'Gambassi Terme', 'Greve in Chianti', 'Grosseto', 'La Spezia', 'Lerici', 'Levanto', 'Lido di Camaiore', 'Lucca', 'Milan City Centre', 'Milano Marittima', 'Montalcino', 'Montefiridolfi', 'Montefollonico', 'Montelupo Fiorentino', 'Monteriggioni', 'Monterosso al Mare', 'Monticiano', 'Montopoli', 'Olmo', 'Orbetello', 'Parma', 'Pienza', 'Pietrasanta', 'Piombino', 'Pisa City Centre', 'Pistoia', 'Poggibonsi', 'Poggio Ugolino', 'Pontassieve', 'Pontedera', 'Portofino', 'Pozzolatico', 'Prato', 'Pratovecchio', 'Radda in Chianti', 'Rapallo', 'Rapolano Terme', 'Rome City Centre', 'San Casciano Val di Pesa', 'San Quirico d Orcia', 'Sansepolcro', 'Santa Margherita Ligure', 'Sestri Levante', 'Spinello', 'Tavarnelle Val di Pesa', 'Tuoro sul Trasimeno', 'Vagliagli', 'Venice City Hotels', 'Venice Piazzale Roma', 'Vernazza', 'Vernio', 'Verona City Centre', 'Viareggio', 'Vicchio'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Florence Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Milan Train Station', 'Florence City Centre', 'Certaldo', 'Lorenzana', 'Milan City Centre', 'Montespertoli', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Pisa Airport', 'Rimini Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Bergamo City Centre', 'Bologna City Centre', 'Forli', 'Pisa City Centre', 'Rimini', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Florence Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence Train Station', 'Florence City Centre', 'Lucca', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Pisa Airport', 'Pisa City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Florence Airport', 'Pisa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Pisa City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Bologna Airport', 'Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Genoa Airport', 'Ljubljana Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Naples Airport', 'Pisa Airport', 'Rimini Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Venice Airport', 'Verona Airport', 'Civitavecchia Cruise Port', 'Livorno Cruise Port', 'Venice Cruise Port', 'Florence Train Station', 'Milan Train Station', 'Florence City Centre', 'Fiesole', 'Montecatini Terme', 'Siena', 'Volterra', 'Ancona', 'Arezzo', 'Asciano', 'Bagni di Lucca', 'Bagno Vignoni', 'Bagno a Ripoli', 'Barberino di Mugello', 'Barga', 'Bergamo City Centre', 'Bologna City Centre', 'Borgo San Lorenzo', 'Candeli', 'Casole D Elsa', 'Castellina in Chianti', 'Castelnuovo Berardenga', 'Castiglion Fiorentino', 'Cecina', 'Certaldo', 'Civitella Paganico', 'Colle Val D Elsa', 'Cortona', 'Donnini', 'Empoli', 'Figline Valdarno', 'Forli', 'Forte dei Marmi', 'Gaiole in Chianti', 'Gambassi Terme', 'Greve in Chianti', 'Grosseto', 'La Spezia', 'Lerici', 'Levanto', 'Lido di Camaiore', 'Lucca', 'Mestre', 'Milan City Centre', 'Milano Marittima', 'Montalcino', 'Montefiridolfi', 'Montefollonico', 'Montelupo Fiorentino', 'Monteriggioni', 'Monterosso al Mare', 'Monticiano', 'Montopoli', 'Nice City Centre', 'Olmo', 'Pienza', 'Pietrasanta', 'Piombino', 'Pisa City Centre', 'Pistoia', 'Poggibonsi', 'Poggio Ugolino', 'Pontassieve', 'Pontedera', 'Portofino', 'Positano', 'Pozzolatico', 'Prato', 'Pratovecchio', 'Punta Ala', 'Radda in Chianti', 'Rapallo', 'Rapolano Terme', 'Rimini', 'Rome City Centre', 'San Casciano Val di Pesa', 'San Gimignano', 'San Quirico d Orcia', 'Sansepolcro', 'Santa Margherita Ligure', 'Sestri Levante', 'Sorrento', 'Spello', 'Spinello', 'Tavarnelle Val di Pesa', 'Tuoro sul Trasimeno', 'Vagliagli', 'Venice Piazzale Roma', 'Vernazza', 'Vernio', 'Verona City Centre', 'Viareggio', 'Vicchio'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Lucca', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Florence Airport', 'Pisa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Pisa City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Bologna Airport', 'Florence Airport', 'Pisa Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Bologna City Centre', 'Pisa City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Bergamo Airport', 'Bergamo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Saturnia'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Bologna Airport', 'Florence Airport', 'Treviso Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Florence Airport', 'Pisa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Pisa City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Florence Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Florence City Centre', 'Milan City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Pisa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Pisa City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Pisa Airport', 'Florence Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Florence Airport', 'Pisa Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Ancona Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Pisa Airport', 'Rimini Airport', 'Florence City Centre', 'Ancona', 'Bologna City Centre', 'Forli', 'Pisa City Centre', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Ancona Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Pisa Airport', 'Rimini Airport', 'Florence City Centre', 'Ancona', 'Bologna City Centre', 'Forli', 'Pisa City Centre', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Bergamo Airport', 'Bergamo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Ancona Airport', 'Bologna Airport', 'Florence Airport', 'Forli Airport', 'Pisa Airport', 'Rimini Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Ancona', 'Bologna City Centre', 'Forli', 'Pisa City Centre', 'Rimini', 'Rome City Centre', 'Venice Piazzale Roma'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Livorno Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Livorno Cruise Port'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Bergamo City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre', 'Rapallo'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Florence Airport', 'Pisa Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Pisa City Centre', 'Rome City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Pisa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    ['Bologna Airport', 'Florence Airport', 'Forli Airport', 'Pisa Airport', 'Rimini Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Fiesole', 'Bologna City Centre', 'Forli', 'Pisa City Centre', 'Rimini', 'Rome City Centre', 'Volterra'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[77]
    end

    ['Bologna Airport', 'Florence Airport', 'Forli Airport', 'Pisa Airport', 'Rimini Airport', 'Rome Ciampino Airport', 'Rome Fiumicino Airport', 'Florence City Centre', 'Fiesole', 'Bologna City Centre', 'Forli', 'Pisa City Centre', 'Rimini', 'Rome City Centre', 'Volterra'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[78]
    end

    ['Florence Airport', 'Milan Malpensa Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[79]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[80]
    end

    ['Pisa Airport', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[81]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[82]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Pisa City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[83]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[84]
    end

    ['Florence Airport', 'Florence City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[85]
    end

    ['Florence Airport', 'Pisa Airport', 'Florence City Centre', 'Fiesole', 'Pisa City Centre', 'Siena'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[86]
    end

    puts 'Pick Up Locations for Manchester'
    pick_ups = City.find_by(name: 'Manchester').pick_up_locations.reorder('id asc')
    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Manchester Airport', 'Manchester City Centre', 'Doncaster'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Birmingham Airport', 'Blackpool Airport', 'East Middlands Airport', 'Glasgow Airport', 'Leeds Bradford Airport', 'Liverpool Airport', 'London Heathrow Airport', 'London Luton Airport', 'Liverpool Cruise Port', 'Manchester City Centre', 'Liverpool City Centre', 'Sheffield', 'Chester', 'Lancaster', 'Blackpool', 'Alderley Edge', 'Audlem', 'Bacup', 'Ballachulish', 'Barnsley', 'Barnsley via Dewsbury', 'Birkenhead', 'Birmingham City Centre', 'Blackburn', 'Bolton', 'Bowness on Windermere', 'Burnley', 'Burscough', 'Bury', 'Buxton', 'Chapel en le Frith', 'Chorley', 'Congleton', 'Crewe', 'Derby', 'Derby Alt Route', 'Doncaster', 'Ellesmere port', 'Endmoor ', 'Fleetwood', 'Glasgow City Centre', 'Glossop', 'Halifax', 'Haydock', 'Hebden Bridge', 'Hindley', 'Holmes Chapel', 'Holyhead Port', 'Huddersfield', 'Hull', 'Knutsford', 'Lampeter', 'Leeds City Centre', 'Leicester', 'Lincoln', 'Llandudno', 'Llangollen', 'London City Centre', 'Macclesfield', 'Mere', 'Middlesborough', 'Middlewich', 'Mold', 'Morecambe', 'Moreton', 'Nantwich', 'Newcastle', 'Newton le willows', 'Norwich', 'Nottingham', 'Nottingham Alt Route', 'Poynton', 'Preston', 'Rawtenstall', 'Rochdale', 'Rotherham', 'Sheffield via Dewsbury', 'Skelmersdale', 'Southport', 'Sowerby Bridge', 'St Helens', 'Stockport', 'Stoke on Trent', 'Todmorden', 'Wakefield', 'Warrington', 'Wetherby', 'Whaley Bridge', 'Widnes', 'Wigan', 'Wilmslow', 'Windermere', 'Wirral', 'Witchurch', 'Wrexham', 'York'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Liverpool Airport', 'Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Birmingham Airport', 'Blackpool Airport', 'Leeds Bradford Airport', 'Liverpool Airport', 'London Heathrow Airport', 'London Luton Airport', 'Manchester Airport', 'Liverpool Cruise Port', 'Manchester City Centre', 'Liverpool City Centre', 'Sheffield', 'Chester', 'Lancaster', 'Alderley Edge', 'Audlem', 'Bacup', 'Barnsley', 'Birmingham City Centre', 'Blackburn', 'Blackpool', 'Bolton', 'Burnley', 'Bury', 'Buxton', 'Chapel en le Frith', 'Chorley', 'Congleton', 'Crewe', 'Derby', 'Doncaster', 'Ellesmere port', 'Fleetwood', 'Glasgow City Centre', 'Glossop', 'Halifax', 'Haydock', 'Hebden Bridge', 'Hindley', 'Holmes Chapel', 'Huddersfield', 'Hull', 'Knutsford', 'Leeds City Centre', 'London City Centre', 'Macclesfield', 'Middlewich', 'Mold', 'Morecambe', 'Nantwich', 'Newcastle', 'Newton le willows', 'Norwich', 'Nottingham', 'Poynton', 'Preston', 'Rawtenstall', 'Rochdale', 'Skelmersdale', 'Sowerby Bridge', 'St Helens', 'Stockport', 'Stoke on Trent', 'Todmorden', 'Wakefield', 'Warrington', 'Whaley Bridge', 'Widnes', 'Wigan', 'Wilmslow', 'Witchurch', 'Wrexham', 'York'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Manchester Airport', 'Manchester City Centre', 'Manchester Airport Hotel'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[77]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[78]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[79]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[80]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[81]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[82]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[83]
    end

    ['Manchester Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[84]
    end

    ['Manchester Airport', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[85]
    end

    ['Manchester Airport', 'Manchester City Centre', 'Manchester City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[86]
    end

    puts 'Pick Up Locations for Bolzano'
    pick_ups = City.find_by(name: 'Bolzano').pick_up_locations.reorder('id asc')
    ['Cortina d Ampezzo', 'Corvara', 'San Pellegrino'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Treviso Airport', 'Verona Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Milan Train Station', 'Cortina d Ampezzo', 'Bologna City Centre', 'Innsbruck City Centre', 'Livigno', 'Milan City Centre', 'Misurina', 'Munich City Centre', 'San Cassiano', 'Tirano'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Livigno', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Salzburg Airport', 'Innsbruck Train Station', 'Innsbruck City Centre', 'Munich City Centre', 'Ortisei', 'Salzburg City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Munich Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Innsbruck City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Munich Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Bergamo Airport', 'Munich Airport', 'Verona Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Munich Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Bergamo Airport', 'Innsbruck Airport', 'Venice Airport', 'Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Innsbruck Airport', 'Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Bologna Airport', 'Geneva Airport', 'Innsbruck Airport', 'Ljubljana Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Vienna Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Milan Train Station', 'Zurich Train Station', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Innsbruck City Centre', 'Milan City Centre', 'Munich City Centre', 'Tirano', 'Vienna City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Zurich Airport', 'Bolzano Train Station', 'Innsbruck Train Station', 'Milan Train Station', 'Zurich Train Station', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Innsbruck City Centre', 'Milan City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Bergamo Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Bergamo Airport', 'Innsbruck Airport', 'Munich Airport', 'Verona Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Bergamo Airport', 'Innsbruck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Treviso Airport', 'Venice Airport', 'Verona Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Treviso Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Bergamo Airport', 'Innsbruck Airport', 'Munich Airport', 'Verona Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Bergamo Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Verona Airport', 'Innsbruck Train Station', 'Milan Train Station', 'Cadenabbia', 'Innsbruck City Centre', 'Milan City Centre', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Treviso Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Bolzano', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Bergamo Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Venice Airport', 'Verona Airport', 'Milan Train Station', 'Brixen', 'Milan City Centre', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Milan City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Venice Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Innsbruck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Bergamo Airport', 'Innsbruck Airport', 'Munich Airport', 'Venice Airport', 'Verona Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Innsbruck Airport', 'Munich Airport', 'Verona Airport', 'Bolzano', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Bolzano Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Basel Airport', 'Bergamo Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Bergamo Airport', 'Innsbruck Airport', 'Munich Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[77]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[78]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[79]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Venice Airport', 'Verona Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Milan Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Innsbruck City Centre', 'Milan City Centre', 'Munich City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[80]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[81]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[82]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Verona Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[83]
    end

    ['Innsbruck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[84]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Innsbruck Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Innsbruck City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[85]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Ljubljana Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[86]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[87]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Innsbruck Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Verona Airport', 'Zurich Airport', 'Innsbruck Train Station', 'Milan Train Station', 'Ancona', 'Bologna City Centre', 'Forli', 'Innsbruck City Centre', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[88]
    end

    ['Innsbruck Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[89]
    end

    ['Bergamo Airport', 'Innsbruck Airport', 'Verona Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[90]
    end

    ['Venice Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[91]
    end

    ['Bergamo Airport', 'Munich Airport', 'Verona Airport', 'Munich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[92]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[93]
    end

    puts 'Pick Up Locations for Milan'
    pick_ups = City.find_by(name: 'Milan').pick_up_locations.reorder('id asc')
    ['Bergamo Airport', 'Brescia Airport', 'Florence Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Treviso Airport', 'Turin Airport', 'Venice Airport', 'Verona Airport', 'Genoa Cruise Port', 'Savona Cruise Port', 'Venice Cruise Port', 'Florence Train Station', 'Mestre Train Station', 'Milan Train Station', 'St Lucia Train Station', 'Milan City Centre', 'Stresa', 'Bellagio', 'Como Town', 'Tremezzo', 'Cernobbio', 'Abano Terme', 'Alba', 'Andalo', 'Andermatt', 'Angera', 'Aosta', 'Arabba', 'Arco', 'Argegno', 'Arona', 'Ascona', 'Assago', 'Barasso', 'Bardolino', 'Bardonecchia', 'Baveno', 'Bella Italia Camping', 'Bellinzona', 'Bergamo City Centre', 'Biella', 'Binasco', 'Bologna City Centre', 'Bolzano', 'Bormio', 'Borno', 'Bregano', 'Brenzone', 'Brescia City Centre', 'Bresso', 'Brunate', 'Cadenabbia', 'Calvenzano', 'Camping Union Lido', 'Campione d Italia', 'Canazei', 'Cannero Riviera', 'Cannobio', 'Caorle', 'Caravaggio', 'Caronno Pertusella', 'Carugate', 'Cavallino', 'Cernusco sul Naviglio', 'Cervinia', 'Cesana Torinese', 'Chamonix', 'Chamonix Mont Blanc', 'Champoluc', 'Cinisello Balsamo', 'Cisano', 'Claviere', 'Colico', 'Colmegna', 'Cologno Monzese', 'Cortina d Ampezzo', 'Corvara', 'Courmayeur', 'Dervio', 'Desenzano del Garda', 'Dimaro', 'Eraclea', 'Fiera Milano City', 'Florence City Centre', 'Folgaria', 'Folgarida', 'Fondo Grande', 'Foppolo', 'Forte dei Marmi', 'Gallarate', 'Galzignano Terme', 'Garda', 'Gardaland', 'Gardone', 'Gardone Riviera', 'Gargnano', 'Genoa City Centre', 'Grado', 'Gressoney', 'Griante', 'Iseo', 'Jesolo', 'La Spezia', 'La Thuile', 'Laglio', 'Lazise', 'Lecco', 'Lenna', 'Lenno', 'Levanto', 'Lido di Jesolo', 'Limone Sul Garda', 'Livigno', 'Locarno', 'Lodi', 'Lugano City Centre', 'Maccagno', 'Madesimo', 'Madonna di Campiglio', 'Malcesine', 'Mantova', 'Melegnano', 'Melzo', 'Menaggio', 'Mendrisio', 'Merano', 'Milan San Siro Stadium', 'Modena', 'Moena', 'Mogliano Veneto', 'Molina di Faggeto Lario', 'Moltrasio', 'Moniga del Garda', 'Montecampione', 'Monterosso al Mare', 'Montgenevre', 'Monza', 'Novara', 'Noventa di Piave', 'Novi Ligure', 'Orta San Giulio', 'Ortisei', 'Ossuccio', 'Padenghe', 'Pallanza', 'Parma', 'Passo del Tonale', 'Pavia', 'Peschiera del Garda', 'Piacenza', 'Piancavallo', 'Pila Vercelli', 'Pisa City Centre', 'Ponte di Legno', 'Portofino', 'Pove del Grappa', 'Pragelato', 'Pre Saint Didier', 'Punta Sabbioni', 'Puy Saint Vincent', 'Quinzano D Oglio', 'Rapallo', 'Reggio Emilia', 'Rho', 'Risoul', 'Riva del Garda', 'Saas Fee', 'Saint Vincent Aosta', 'Salo', 'Salsomaggiore Terme', 'San Bonifacio', 'San Siro Como', 'Santa Margherita Ligure', 'Sarnico', 'Saronno', 'Sauze d Oulx', 'Savona', 'Selva di Val Gardena', 'Serre Chevalier', 'Sesto Calende', 'Sestriere', 'Sirmione', 'Siziano', 'Sondrio', 'Sonico', 'St Gervais Les Bains', 'St Moritz', 'Sulzano', 'Tignale', 'Torbole', 'Torri del Benaco', 'Toscolano Maderno', 'Trento', 'Treviglio', 'Treviso City Centre', 'Turin City Centre', 'Val d lsere', 'Valfrejus', 'Valmeinier', 'Valtournenche', 'Varallo', 'Varenna', 'Varese', 'Venice Lido', 'Venice Piazzale Roma', 'Verbania', 'Verona City Centre', 'Viareggio', 'Vicenza', 'Vigevano', 'Zermatt'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[0]
    end

    ['Basel Airport', 'Bergamo Airport', 'Brescia Airport', 'Florence Airport', 'Geneva Airport', 'Milan Linate Airport', 'Pisa Airport', 'Treviso Airport', 'Turin Airport', 'Venice Airport', 'Verona Airport', 'Genoa Cruise Port', 'Savona Cruise Port', 'Venice Cruise Port', 'Florence Train Station', 'Lugano Train Station', 'Mestre Train Station', 'Milan Train Station', 'St Lucia Train Station', 'Milan City Centre', 'Stresa', 'Bellagio', 'Como Town', 'Tremezzo', 'Cernobbio', 'Abano Terme', 'Alagna Valsesia', 'Alba', 'Aldesago', 'Alessandria', 'Andalo', 'Andermatt', 'Angera', 'Aosta', 'Arabba', 'Arco', 'Argegno', 'Arona', 'Ascona', 'Assago', 'Balerna', 'Barasso', 'Bardolino', 'Bardonecchia', 'Bassano del Grappa', 'Baveno', 'Bedano', 'Bella Italia Camping', 'Bellinzona', 'Bergamo City Centre', 'Biella', 'Bologna City Centre', 'Bolzano', 'Bormio', 'Borno', 'Bregano', 'Brenzone', 'Brescia City Centre', 'Bresso', 'Brig', 'Brunate', 'Cadenabbia', 'Calamandrana', 'Calozzo', 'Calvenzano', 'Camogli', 'Camping Union Lido', 'Campione d Italia', 'Canazei', 'Cannero Riviera', 'Cannobio', 'Caorle', 'Carugate', 'Casale Monferrato', 'Cavallino', 'Cernusco sul Naviglio', 'Cervinia', 'Cesana Torinese', 'Cesano Maderno', 'Chamonix', 'Chamonix Mont Blanc', 'Champoluc', 'Cinisello Balsamo', 'Cisano', 'Claviere', 'Cogne', 'Colico', 'Cologno Monzese', 'Cortina d Ampezzo', 'Corvara', 'Costigliole D Asti', 'Courmayeur', 'Desenzano del Garda', 'Dimaro', 'Eraclea', 'Fiera Milano City', 'Florence City Centre', 'Folgaria', 'Folgarida', 'Fondo Grande', 'Foppolo', 'Forte dei Marmi', 'Gallarate', 'Galzignano Terme', 'Garbagnate Milanese ', 'Garda', 'Gardaland', 'Gardone', 'Gardone Riviera', 'Gargnano', 'Geneva City Centre', 'Genoa City Centre', 'Gozzano', 'Grado', 'Gressoney', 'Griante', 'Iseo', 'Ispra', 'Jesolo', 'La Rossiere', 'La Spezia', 'La Thuile', 'Laglio', 'Lazise', 'Lecco', 'Lech am Arlberg', 'Legnano', 'Lenna', 'Lenno', 'Levanto', 'Lido di Jesolo', 'Limone Sul Garda', 'Livigno', 'Locarno', 'Lugano City Centre', 'Maccagno', 'Macugnaga', 'Madesimo', 'Madonna di Campiglio', 'Malcesine', 'Mantova', 'Melegnano', 'Melzo', 'Menaggio', 'Mendrisio', 'Merano', 'Milan San Siro Stadium', 'Modena', 'Moena', 'Mogliano Veneto', 'Moltrasio', 'Moniga del Garda', 'Montecampione', 'Montecatini Terme', 'Monterosso al Mare', 'Montgenevre', 'Monza', 'Nice City Centre', 'Novara', 'Novate Milanese', 'Noventa di Piave', 'Omegna', 'Orta San Giulio', 'Ortisei', 'Ossuccio', 'Padenghe', 'Pallanza', 'Parma', 'Passo del Tonale', 'Pavia', 'Peschiera del Garda', 'Piacenza', 'Piancavallo', 'Pila Gressan', 'Pila Vercelli', 'Piotta', 'Pisa City Centre', 'Ponte di Legno', 'Porlezza', 'Portofino', 'Pove del Grappa', 'Pragelato', 'Pre Saint Didier', 'Pregassona', 'Pregnana Milanese', 'Punta Sabbioni', 'Puy Saint Vincent', 'Rapallo', 'Reggio Emilia', 'Rho', 'Riomaggiore', 'Risoul', 'Riva del Garda', 'Rozzano', 'Saas Fee', 'Saint Vincent Aosta', 'Salo', 'Saluzzo', 'San Bonifacio', 'San Donato Milanese', 'San Fedele Intelvi', 'San Siro Como', 'San Vincenzo', 'Santa Margherita Ligure', 'Sarnico', 'Sauze d Oulx', 'Savona', 'Selva di Val Gardena', 'Seregno', 'Serravelle Scrivia', 'Serre Chevalier', 'Sesto Calende', 'Sesto San Giovanni', 'Sestri Levante', 'Sestriere', 'Silvaplana', 'Sirmione', 'Somma Lombardo', 'Sondrio', 'Sonico', 'Spinello', 'St Gervais Les Bains', 'St Moritz', 'Sulzano', 'Ternate', 'Tignale', 'Tignes', 'Torbole', 'Torno', 'Torri del Benaco', 'Toscolano Maderno', 'Trento', 'Treviglio', 'Treviso City Centre', 'Turin City Centre', 'Val d lsere', 'Valfrejus', 'Vallandry', 'Valmeinier', 'Valtournenche', 'Varallo', 'Varenna', 'Varese', 'Venice Lido', 'Venice Piazzale Roma', 'Verbania', 'Verona City Centre', 'Viareggio', 'Vicenza', 'Vigevano', 'Vogogna', 'Zermatt'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[1]
    end

    ['Bergamo Airport', 'Brescia Airport', 'Florence Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Treviso Airport', 'Turin Airport', 'Venice Airport', 'Verona Airport', 'Genoa Cruise Port', 'Savona Cruise Port', 'Venice Cruise Port', 'Florence Train Station', 'Mestre Train Station', 'Milan Train Station', 'St Lucia Train Station', 'Milan City Centre', 'Stresa', 'Bellagio', 'Como Town', 'Tremezzo', 'Cernobbio', 'Abano Terme', 'Andalo', 'Andermatt', 'Angera', 'Aosta', 'Arabba', 'Arco', 'Argegno', 'Arona', 'Ascona', 'Assago', 'Barasso', 'Bardolino', 'Bardonecchia', 'Baveno', 'Bella Italia Camping', 'Bellinzona', 'Bergamo City Centre', 'Biella', 'Bologna City Centre', 'Bolzano', 'Bormio', 'Borno', 'Bregano', 'Brenzone', 'Brescia City Centre', 'Bresso', 'Brunate', 'Cadenabbia', 'Camping Union Lido', 'Campione d Italia', 'Canazei', 'Cannero Riviera', 'Cannobio', 'Caorle', 'Carugate', 'Cavallino', 'Cernusco sul Naviglio', 'Cervinia', 'Cesana Torinese', 'Chamonix', 'Chamonix Mont Blanc', 'Champoluc', 'Cinisello Balsamo', 'Cisano', 'Claviere', 'Colico', 'Cologno Monzese', 'Cortina d Ampezzo', 'Corvara', 'Courmayeur', 'Desenzano del Garda', 'Dimaro', 'Eraclea', 'Fiera Milano City', 'Florence City Centre', 'Folgaria', 'Folgarida', 'Fondo Grande', 'Foppolo', 'Forte dei Marmi', 'Gallarate', 'Galzignano Terme', 'Garda', 'Gardaland', 'Gardone', 'Gardone Riviera', 'Gargnano', 'Genoa City Centre', 'Grado', 'Gressoney', 'Griante', 'Iseo', 'Jesolo', 'La Spezia', 'La Thuile', 'Laglio', 'Lazise', 'Lecco', 'Lenna', 'Lenno', 'Levanto', 'Lido di Jesolo', 'Limone Sul Garda', 'Livigno', 'Locarno', 'Lugano City Centre', 'Maccagno', 'Madesimo', 'Madonna di Campiglio', 'Malcesine', 'Mantova', 'Melegnano', 'Menaggio', 'Mendrisio', 'Merano', 'Milan San Siro Stadium', 'Moena', 'Mogliano Veneto', 'Moltrasio', 'Moniga del Garda', 'Montecampione', 'Monterosso al Mare', 'Montgenevre', 'Monza', 'Novara', 'Noventa di Piave', 'Orta San Giulio', 'Ortisei', 'Padenghe', 'Pallanza', 'Parma', 'Passo del Tonale', 'Pavia', 'Peschiera del Garda', 'Piacenza', 'Piancavallo', 'Ponte di Legno', 'Portofino', 'Pove del Grappa', 'Pre Saint Didier', 'Punta Sabbioni', 'Puy Saint Vincent', 'Rapallo', 'Reggio Emilia', 'Rho', 'Risoul', 'Riva del Garda', 'Saas Fee', 'Salo', 'San Bonifacio', 'San Siro Como', 'Santa Margherita Ligure', 'Sarnico', 'Sauze d Oulx', 'Savona', 'Selva di Val Gardena', 'Serravelle Scrivia', 'Serre Chevalier', 'Sesto Calende', 'Sestriere', 'Sirmione', 'Sondrio', 'St Gervais Les Bains', 'St Moritz', 'Sulzano', 'Tignale', 'Torbole', 'Torno', 'Torri del Benaco', 'Toscolano Maderno', 'Trento', 'Treviglio', 'Treviso City Centre', 'Turin City Centre', 'Valfrejus', 'Valmeinier', 'Valtournenche', 'Varallo', 'Varenna', 'Varese', 'Venice Lido', 'Venice Piazzale Roma', 'Verbania', 'Verona City Centre', 'Viareggio', 'Vicenza', 'Vigevano', 'Zermatt'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[2]
    end

    ['Milan Malpensa Airport', 'Zurich Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[3]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Milan Malpensa Airport', 'Bologna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[4]
    end

    ['Basel Airport', 'Bern Airport', 'Chambery Airport', 'Geneva Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[5]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[6]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[7]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[8]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[9]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[10]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[11]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[12]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Pisa Airport', 'Milan Train Station', 'Milan City Centre', 'Stresa', 'Bellagio', 'Como Town', 'Pisa City Centre', 'Rapallo', 'Santa Margherita Ligure', 'Zermatt'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[13]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Bologna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[14]
    end

    ['Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[15]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[16]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[17]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[18]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[19]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[20]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Merano'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[21]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[22]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[23]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[24]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[25]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[26]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[27]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[28]
    end

    ['Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[29]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[30]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[31]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Venice Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[32]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[33]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Milan City Centre', 'Avoriaz', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Gressoney', 'Turin City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[34]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[35]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Milan City Centre', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Turin City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[36]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[37]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[38]
    end

    ['Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[39]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[40]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Bologna Airport', 'Geneva Airport', 'Lugano Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Milan City Centre', 'Stresa', 'Bellagio', 'Bern City Centre', 'Bologna City Centre', 'Geneva City Centre', 'Lugano City Centre', 'Menaggio', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[41]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[42]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[43]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Rimini Airport', 'Ancona', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[44]
    end

    ['Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[45]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[46]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[47]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[48]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[49]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[50]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Verona Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[51]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[52]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[53]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[54]
    end

    ['Milan Malpensa Airport', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[55]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[56]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Bologna Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Milan City Centre', 'Stresa', 'Bern City Centre', 'Bologna City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[57]
    end

    ['Bergamo Airport', 'Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[58]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[59]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[60]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Brescia Airport', 'Geneva Airport', 'Innsbruck Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Munich Airport', 'Turin Airport', 'Verona Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Milan City Centre', 'Bergamo City Centre', 'Bern City Centre', 'Bolzano', 'Bormio', 'Brescia City Centre', 'Chamonix', 'Chamonix Mont Blanc', 'Geneva City Centre', 'Munich City Centre', 'Sondrio', 'St Moritz', 'Turin City Centre', 'Verona City Centre', 'Zernez', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[61]
    end

    ['Ancona Airport', 'Bologna Airport', 'Forli Airport', 'Milan Linate Airport', 'Rimini Airport', 'Ancona', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[62]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[63]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[64]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Milan City Centre', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[65]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[66]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[67]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[68]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Stresa', 'Como Town', 'Rapallo'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[69]
    end

    ['Ancona Airport', 'Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Bologna Airport', 'Brescia Airport', 'Florence Airport', 'Forli Airport', 'Geneva Airport', 'Ljubljana Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Treviso Airport', 'Turin Airport', 'Venice Airport', 'Verona Airport', 'Vienna Airport', 'Zurich Airport', 'Genoa Cruise Port', 'Savona Cruise Port', 'Venice Cruise Port', 'Florence Train Station', 'Mestre Train Station', 'Milan Train Station', 'St Lucia Train Station', 'Verona Porta Nuova Station', 'Zurich Train Station', 'Milan City Centre', 'Stresa', 'Bellagio', 'Como Town', 'Tremezzo', 'Cernobbio', 'Abano Terme', 'Ancona', 'Andalo', 'Andermatt', 'Angera', 'Aosta', 'Arabba', 'Arco', 'Argegno', 'Arona', 'Ascona', 'Assago', 'Barasso', 'Bardolino', 'Bardonecchia', 'Baveno', 'Bella Italia Camping', 'Bellinzona', 'Bergamo City Centre', 'Bern City Centre', 'Biella', 'Bologna City Centre', 'Bolzano', 'Bormio', 'Borno', 'Bregano', 'Brenzone', 'Brescia City Centre', 'Bresso', 'Brig', 'Brunate', 'Cadenabbia', 'Camping Union Lido', 'Campione d Italia', 'Canazei', 'Cannero Riviera', 'Cannobio', 'Caorle', 'Carugate', 'Cavallino', 'Cernusco sul Naviglio', 'Cervinia', 'Cesana Torinese', 'Chamonix', 'Chamonix Mont Blanc', 'Champoluc', 'Cinisello Balsamo', 'Cisano', 'Claviere', 'Colico', 'Cologno Monzese', 'Cortina d Ampezzo', 'Corvara', 'Courmayeur', 'Davos', 'Desenzano del Garda', 'Dimaro', 'Eraclea', 'Fiera Milano City', 'Florence City Centre', 'Folgaria', 'Folgarida', 'Fondo Grande', 'Foppolo', 'Forli', 'Forte dei Marmi', 'Gallarate', 'Galzignano Terme', 'Garda', 'Gardaland', 'Gardone', 'Gardone Riviera', 'Gargnano', 'Gavi', 'Geneva City Centre', 'Genoa City Centre', 'Grado', 'Gressoney', 'Griante', 'Iseo', 'Ispra', 'Jesolo', 'Klosters', 'La Spezia', 'La Thuile', 'Laglio', 'Lazise', 'Lecco', 'Lenna', 'Lenno', 'Levanto', 'Lido di Jesolo', 'Limone Sul Garda', 'Livigno', 'Locarno', 'Lugano City Centre', 'Maccagno', 'Madesimo', 'Madonna di Campiglio', 'Malcesine', 'Mantova', 'Melegnano', 'Menaggio', 'Mendrisio', 'Merano', 'Milan San Siro Stadium', 'Modena', 'Moena', 'Mogliano Veneto', 'Moltrasio', 'Moniga del Garda', 'Monsummano Terme', 'Monte Carlo', 'Montecampione', 'Montecatini Terme', 'Monterosso al Mare', 'Montgenevre', 'Monza', 'Novara', 'Noventa di Piave', 'Orta San Giulio', 'Ortisei', 'Ossuccio', 'Padenghe', 'Pallanza', 'Parma', 'Passo del Tonale', 'Pavia', 'Peschiera del Garda', 'Piacenza', 'Piancavallo', 'Pila Vercelli', 'Ponte di Legno', 'Portofino', 'Pove del Grappa', 'Pragelato', 'Pre Saint Didier', 'Punta Sabbioni', 'Puy Saint Vincent', 'Rapallo', 'Reggio Emilia', 'Rho', 'Rimini', 'Risoul', 'Riva del Garda', 'Saas Fee', 'Saint Vincent Aosta', 'Salo', 'San Bonifacio', 'San Siro Como', 'Santa Margherita Ligure', 'Sarnico', 'Sauze d Oulx', 'Savona', 'Selva di Val Gardena', 'Serravelle Scrivia', 'Serre Chevalier', 'Sesto Calende', 'Sestriere', 'Silvaplana', 'Sirmione', 'Sondrio', 'St Gervais Les Bains', 'St Moritz', 'Sulzano', 'Tignale', 'Torbole', 'Torri del Benaco', 'Toscolano Maderno', 'Trento', 'Treviglio', 'Treviso City Centre', 'Turin City Centre', 'Valfrejus', 'Vallandry', 'Valmeinier', 'Valtournenche', 'Varallo', 'Varenna', 'Varese', 'Venice Lido', 'Venice Piazzale Roma', 'Verbania', 'Verona City Centre', 'Viareggio', 'Vicenza', 'Vienna City Centre', 'Vigevano', 'Zermatt', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[70]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[71]
    end

    ['Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[72]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[73]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Bologna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[74]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Bologna City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[75]
    end

    ['Bergamo Airport', 'Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[76]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[77]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[78]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Stresa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[79]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[80]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[81]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[82]
    end

    ['Ancona Airport', 'Bologna Airport', 'Forli Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Milan Train Station', 'Milan City Centre', 'Ancona', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[83]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[84]
    end

    ['Ancona Airport', 'Bergamo Airport', 'Bologna Airport', 'Forli Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Rimini Airport', 'Milan Train Station', 'Milan City Centre', 'Ancona', 'Bologna City Centre', 'Forli', 'Rimini'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[85]
    end

    ['Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Milan City Centre', 'Bergamo City Centre', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[86]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Zurich Train Station', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[87]
    end

    ['Bergamo Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Turin Airport', 'Milan City Centre', 'Bergamo City Centre', 'Geneva City Centre', 'Turin City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[88]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[89]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[90]
    end

    ['Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[91]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[92]
    end

    ['Bergamo Airport', 'Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[93]
    end

    ['Bergamo Airport', 'Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[94]
    end

    ['Bergamo Airport', 'Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[95]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[96]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[97]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[98]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Zurich Airport', 'Bern City Centre', 'Geneva City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[99]
    end

    ['Bergamo Airport', 'Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[100]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[101]
    end

    ['Bergamo Airport', 'Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[102]
    end

    ['Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[103]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[104]
    end

    ['Bergamo Airport', 'Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[105]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[106]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[107]
    end

    ['Milan Linate Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[108]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[109]
    end

    ['Ancona Airport', 'Basel Airport', 'Bergamo Airport', 'Bern Airport', 'Bologna Airport', 'Geneva Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Milan City Centre', 'Ancona', 'Bern City Centre', 'Bologna City Centre', 'Geneva City Centre', 'Livigno', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[110]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[111]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Stresa', 'Bellagio', 'Lecco', 'Mendrisio', 'Orta San Giulio', 'Varenna'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[112]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[113]
    end

    ['Milan Malpensa Airport', 'Milan Train Station'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[114]
    end

    ['Bergamo Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Turin City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[115]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[116]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[117]
    end

    ['Basel Airport', 'Bern Airport', 'Geneva Airport', 'Lyon Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Zurich Airport', 'Milan Train Station', 'Zurich Train Station', 'Milan City Centre', 'Bern City Centre', 'Geneva City Centre', 'Zurich City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[118]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[119]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[120]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Stresa'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[121]
    end

    ['Bergamo Airport', 'Bologna Airport', 'Lugano Airport', 'Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre', 'Bologna City Centre', 'Lugano City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[122]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[123]
    end

    ['Milan Linate Airport', 'Milan Malpensa Airport', 'Milan Train Station', 'Milan City Centre'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[124]
    end

    ['Bergamo Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[125]
    end

    ['Milan Malpensa Airport'].each do |drop_off|
      aux = DropOffLocation.find_or_create_by(name: drop_off)
      aux.pick_up_locations << pick_ups[126]
    end


  end
  puts '--------- End of Drop Off Locations Seeds File -----------'
end