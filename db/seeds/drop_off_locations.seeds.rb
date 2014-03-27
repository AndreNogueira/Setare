after :pick_up_locations do
  puts '--------- Begin of Drop Off Locations Seeds File ---------'
  puts 'Pick Up Locations for Innsbruck'
  pick_ups = City.find_by(name: 'Innsbruck').pick_up_locations.reorder('id asc')

  ['Munich Airport','Salzburg Airport','Vienna Airport','St Anton am Arlberg','Kitzbuhel','Mayrhofen','Ischgl','Fugen','Lech','Absam','Achenkirch','Affenhausen','Alpbach','Alpe Cermis','Alpe di Pampeago','Alpe di Siusi','Alta Badia','Arabba','Arzl im Pitztal','Aschau im Zillertal','Aschbach Markt','Axamer Lizum','Axams','Bad Haring','Bad Tolz','Baumkirchen','Berwang','Biberwier','Bichlbach','Birgitz','Bludenz','Bolzano','Bregenz','Breitenbach','Brennerpass','Brixen','Brixen im Thale','Brixlegg','Bruck am Ziller','Bruneck','Campitello di Fassa','Canazei','Cavalese','Chur','Colfosco','Compatsch','Cortina d Ampezzo','Corvara','Dalaas','Davos','Dimaro','Dirschenbach','Dobbiaco','Dornbirn','Ebbs','Eben am Achensee','Ehrwald','Eibsee','Eigenhofen','Elblingenalp','Ellmau','Elmen','Erl','Erpfendorf','Feldkirch','Fieberbrunn','Fiecht','Finkenberg','Fiss','Flaurling','Fliess','Flirsch','Folgarida','Fortezza','Frohnhausen','Fulpmes','Fussen','Galtur','Garmisch Partenkirchen','Gerlos','Gnadenwald','Going','Going am Wilden Kaiser','Gossensass','Gotzens','Gotzis','Graz','Gries Sellrain','Gries am Brenner','Grinzens','Gschnitz','Hagen','Hagen Lofer','Haiming','Hall in Tirol','Hatting','Heiterwang','Hinterglemm','Hintertux','Hochfilzen','Hochfugen','Hochgurgl','Hochzirl','Hofen','Hohenems','Hopfgarten','Hopfgarten im Brixental','Huben','Igls','Imst','Innsbruck City Centre','Inzing','Itter','Jenbach','Jochberg','Judenstein','Kaltenbach','Kampl','Kappl','Kaprun','Karres','Kastelruth','Kauns','Kematen','Kiefersfelden','Kirchberg in Tirol','Kirchbichl','Klagenfurt','Kolsass','Konigsleiten','Kossen','Kramsach','Krossbach','Kufstein','Kuhtai','Kundl','Ladis','Landeck','Lanersbach','Langen am Arlberg','Langenfeld','Lans','Leiblfing','Leithen','Lermoos','Leutasch','Lienz','Linz ','Livigno','Lofer','Lusens','Lustenau','Madonna di Campiglio','Mathon','Matrei am Brenner','Matrei in Osttirol','Maurach','Mazzin','Meran','Merano','Mieders','Milders','Mils bei Imst','Misurina','Mittenwald','Mittersill','Moena','Motz','Munich City Centre','Munster','Munster Tirol','Murnau','Mutters','Nassereth','Natters','Nauders','Navis','Neder','Neu Gotzens','Neustift','Neustift im Stubaital','Niederau','Nova Levante','Oberammergau','Oberau Wildschonau','Obereggen','Obergurgl','Oberhofen','Obermieming','Obernberg am Brenner','Oberperfuss','Obladis','Obsteig','Oetz','Omes','Ortisei','Passo Lavaze','Passo San Pellegrino','Patsch','Pertisau','Pettnau','Pettnau am Arlberg','Pfaffenhofen','Pfons','Pfunds','Pians','Pill','Polling','Predazzo','Prutz','Radfeld','Ramsau im Zillertal','Ranggen','Rankweil','Rans','Rattenberg','Rauris','Reith bei Seefeld','Reith im Alpbachtal','Reutte','Ried im Zillertal','Rietz','Rinn','Ritten','Rosenheim','Rotholz','Rum','Saalbach','Salzburg City Centre','San Candido','San Cassiano','Santa Cristina Val Gardena','Sauttens','Scharnitz','Schattwald','Scheffau am Wilden Kaiser','Schlitters','Schmirn','Schoenberg','Schonwies','Schwaz','See im Paznauntal','Seefeld in Tirol','Sellrain','Selva di Val Gardena','Serfaus','Sillian','Silz','Sistrans','Solden','Solden Tyrol','Soll','St Christoph am Arlberg','St Jakob am Arlberg','St Johann in Tirol','St Moritz','St Peter in Tirol','St Sigmund im Sellrain','St Ulrich Ortisei','Stams','Stans','Stanzach','Steeg','Steinach am Brenner','Steinhaus im Ahrntal','Sterzing','Strass im Zillertal','Strengen am Arlberg','Stubaier Gletscher','Stumm','Tannheim','Tarrenz','Tegernsee','Telfes','Telfs','Terfens','Thaur','Thiersee','Trento','Trin','Tulfes','Tumpen','Uderns','Umhausen','Untermieming','Valle Aurina','Verona City Centre','Vienna City Centre','Vigo di Fassa','Vomperberg','Waidring','Walchsee','Warth','Wattens','Weer','Weissenmbach Lech','Wenns','Westendorf','Wiesing','Wildschonau Oberau','Worgl','Zams','Zell am See','Zell am Ziller','Zernez','Zirl','Zurich City Centre','Zurs','Zwieselstein'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Munich Airport','Salzburg Airport','Vienna Airport','St Anton am Arlberg','Kitzbuhel','Mayrhofen','Ischgl','Fugen','Lech','Absam','Achenkirch','Affenhausen','Alpbach','Arzl im Pitztal','Aschau im Zillertal','Axamer Lizum','Axams','Bad Haring','Bad Tolz','Baumkirchen','Berwang','Biberwier','Bichlbach','Birgitz','Bludenz','Bolzano','Bregenz','Breitenbach','Brixen','Brixen im Thale','Brixlegg','Bruck am Ziller','Bruneck','Chur','Cortina d Ampezzo','Corvara','Dalaas','Davos','Dirschenbach','Dornbirn','Ebbs','Eben am Achensee','Ehrwald','Eibsee','Eigenhofen','Elblingenalp','Ellmau','Elmen','Erl','Erpfendorf','Feldkirch','Fieberbrunn','Fiecht','Finkenberg','Fiss','Flaurling','Fliess','Flirsch','Frohnhausen','Fulpmes','Fussen','Galtur','Garmisch Partenkirchen','Gerlos','Gnadenwald','Going am Wilden Kaiser','Gossensass','Gotzens','Gotzis','Graz','Gries Sellrain','Gries am Brenner','Grinzens','Gschnitz','Hagen Lofer','Haiming','Hall in Tirol','Hatting','Heiterwang','Hintertux','Hochfilzen','Hochzirl','Hofen','Hohenems','Hopfgarten','Huben','Igls','Imst','Innsbruck City Centre','Inzing','Itter','Jenbach','Judenstein','Kaltenbach','Kampl','Kappl','Karres','Kauns','Kematen','Kiefersfelden','Kirchberg in Tirol','Kirchbichl','Klagenfurt','Kolsass','Kossen','Kramsach','Krossbach','Kufstein','Kuhtai','Kundl','Ladis','Landeck','Lanersbach','Langen am Arlberg','Langenfeld','Lans','Leiblfing','Leithen','Lermoos','Leutasch','Lienz','Linz ','Lofer','Lusens','Lustenau','Mathon','Matrei am Brenner','Matrei in Osttirol','Maurach','Merano','Mieders','Milders','Mils bei Imst','Mittenwald','Mittersill','Motz','Munich City Centre','Munster Tirol','Murnau','Mutters','Nassereth','Natters','Nauders','Navis','Neder','Neu Gotzens','Neustift','Oberammergau','Obergurgl','Oberhofen','Obermieming','Obernberg am Brenner','Oberperfuss','Obladis','Obsteig','Omes','Patsch','Pertisau','Pettnau','Pettnau am Arlberg','Pfaffenhofen','Pfons','Pfunds','Pians','Pill','Polling','Prutz','Radfeld','Ramsau im Zillertal','Ranggen','Rankweil','Rans','Rattenberg','Reith bei Seefeld','Reutte','Ried im Zillertal','Rietz','Rinn','Rosenheim','Rotholz','Rum','Salzburg City Centre','Sauttens','Schattwald','Schlitters','Schmirn','Schoenberg','Schonwies','Schwaz','See im Paznauntal','Seefeld in Tirol','Sellrain','Selva di Val Gardena','Serfaus','Sillian','Silz','Sistrans','Solden','Solden Tyrol','Soll','St Jakob am Arlberg','St Johann in Tirol','St Moritz','St Peter in Tirol','St Sigmund im Sellrain','Stams','Stans','Stanzach','Steeg','Steinach am Brenner','Sterzing','Strass im Zillertal','Strengen am Arlberg','Stubaier Gletscher','Stumm','Tannheim','Tarrenz','Tegernsee','Telfes','Telfs','Terfens','Thaur','Thiersee','Trento','Trin','Tulfes','Tumpen','Uderns','Umhausen','Untermieming','Vienna City Centre','Vomperberg','Waidring','Walchsee','Wattens','Weer','Wenns','Westendorf','Wiesing','Wildschonau Oberau','Worgl','Zams','Zell am See','Zell am Ziller','Zirl','Zurich City Centre','Zurs','Zwieselstein'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[2]
  end

  ['Basel Airport','Bern Airport','Chambery Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[3]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[4]
  end

  ['Basel Airport','Bern Airport','Chambery Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[5]
  end

  ['Basel Airport','Bern Airport','Chambery Airport','Innsbruck Airport','Memmingen Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[6]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[7]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[8]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[9]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[10]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[11]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[12]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[13]
  end

  ['Basel Airport','Bern Airport','Bern City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[14]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[15]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[16]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[17]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[18]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[19]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[20]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[21]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[22]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[23]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[24]
  end

  ['Salzburg Airport','Salzburg Train Station','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[25]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Ljubljana Airport','Memmingen Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bled','Innsbruck City Centre','Portoroz','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[26]
  end

  ['Innsbruck Airport','Salzburg Airport','Salzburg Train Station','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[27]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[28]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[29]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[30]
  end

  ['Zurich Airport','Zurich Train Station','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[31]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[32]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[33]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[34]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[35]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[36]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[37]
  end

  ['Innsbruck Airport','Munich Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[38]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[39]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[40]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Vienna Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Vienna City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[41]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[42]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[43]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[44]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[45]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Ljubljana Airport','Memmingen Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bled','Innsbruck City Centre','Portoroz','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[46]
  end

  ['Salzburg Airport','Salzburg Train Station','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[47]
  end

  ['Basel Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[48]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[49]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[50]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[51]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[52]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[53]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[54]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[55]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[56]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[57]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[58]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Sion Airport','Zurich Airport','Salzburg Train Station','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[59]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Munich Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Munich City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[60]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[61]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[62]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[63]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[64]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[65]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[66]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[67]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[68]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[69]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[70]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[71]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[72]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[73]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Salzburg Train Station','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[74]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[75]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[76]
  end

  ['Munich Airport','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[77]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[78]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[79]
  end

  ['Innsbruck Airport','Munich Airport','Zurich Airport','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[80]
  end

  ['Munich Airport','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[81]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[82]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[83]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[84]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[85]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[86]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[87]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[88]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Innsbruck Airport','Ljubljana Airport','Memmingen Airport','Munich Airport','Salzburg Airport','Vienna Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','St Anton am Arlberg','Kitzbuhel','Mayrhofen','Ischgl','Fugen','Lech','Absam','Achenkirch','Affenhausen','Alpbach','Arzl im Pitztal','Aschau im Zillertal','Axamer Lizum','Axams','Bad Haring','Bad Tolz','Baumkirchen','Bern City Centre','Berwang','Biberwier','Bichlbach','Birgitz','Bled','Bludenz','Bolzano','Bregenz','Breitenbach','Brixen','Brixen im Thale','Brixlegg','Bruck am Ziller','Bruneck','Chur','Cortina d Ampezzo','Corvara','Dalaas','Davos','Dirschenbach','Dornbirn','Ebbs','Eben am Achensee','Ehrwald','Eibsee','Eigenhofen','Elblingenalp','Ellmau','Elmen','Erl','Erpfendorf','Feldkirch','Fieberbrunn','Fiecht','Finkenberg','Fiss','Flaurling','Fliess','Flirsch','Frohnhausen','Fulpmes','Fussen','Galtur','Garmisch Partenkirchen','Gerlos','Gnadenwald','Going am Wilden Kaiser','Gossensass','Gotzens','Gotzis','Graz','Gries Sellrain','Gries am Brenner','Grinzens','Gschnitz','Hagen Lofer','Haiming','Hall in Tirol','Hatting','Heiterwang','Hintertux','Hochfilzen','Hochzirl','Hofen','Hohenems','Hopfgarten','Huben','Igls','Imst','Inzing','Itter','Jenbach','Judenstein','Kaltenbach','Kampl','Kappl','Karres','Kauns','Kematen','Kiefersfelden','Kirchberg in Tirol','Kirchbichl','Klagenfurt','Kolsass','Kossen','Kramsach','Krossbach','Kufstein','Kuhtai','Kundl','Ladis','Landeck','Lanersbach','Langen am Arlberg','Langenfeld','Lans','Leiblfing','Leithen','Lermoos','Leutasch','Lienz','Linz ','Ljubljana City Centre','Lofer','Lusens','Lustenau','Mathon','Matrei am Brenner','Matrei in Osttirol','Maurach','Merano','Mieders','Milders','Mils bei Imst','Mittenwald','Mittersill','Motz','Munich City Centre','Munster Tirol','Murnau','Mutters','Nassereth','Natters','Nauders','Navis','Neder','Neu Gotzens','Neustift','Oberammergau','Obergurgl','Oberhofen','Obermieming','Obernberg am Brenner','Oberperfuss','Obladis','Obsteig','Omes','Patsch','Pertisau','Pettnau','Pettnau am Arlberg','Pfaffenhofen','Pfons','Pfunds','Pians','Pill','Polling','Portoroz','Prutz','Radfeld','Ramsau im Zillertal','Ranggen','Rankweil','Rans','Rattenberg','Reith bei Seefeld','Reutte','Ried im Zillertal','Rietz','Rinn','Rosenheim','Rotholz','Rum','Salzburg City Centre','Sauttens','Schattwald','Schlitters','Schmirn','Schoenberg','Schonwies','Schwaz','See im Paznauntal','Seefeld in Tirol','Sellrain','Selva di Val Gardena','Serfaus','Sillian','Silz','Sistrans','Solden','Solden Tyrol','Soll','St Jakob am Arlberg','St Johann in Tirol','St Moritz','St Peter in Tirol','St Sigmund im Sellrain','Stams','Stans','Stanzach','Steeg','Steinach am Brenner','Sterzing','Strass im Zillertal','Strengen am Arlberg','Stubaier Gletscher','Stumm','Tannheim','Tarrenz','Tegernsee','Telfes','Telfs','Terfens','Thaur','Thiersee','Trento','Trin','Tulfes','Tumpen','Uderns','Umhausen','Untermieming','Vienna City Centre','Vomperberg','Waidring','Walchsee','Wattens','Weer','Wenns','Westendorf','Wiesing','Wildschonau Oberau','Worgl','Zams','Zell am See','Zell am Ziller','Zirl','Zurich City Centre','Zurs','Zwieselstein'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[89]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[90]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Munich Airport','Salzburg Airport','Vienna Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich Airport Hotel','Munich City Centre','Salzburg City Centre','Vienna City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[91]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[92]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[93]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[94]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[95]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[96]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[97]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[98]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[99]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[100]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[101]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[102]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[103]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[104]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[105]
  end

  ['Innsbruck Airport','Munich Airport','Salzburg Airport','Vienna Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre','Munich Airport Hotel','Munich City Centre','Vienna City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[106]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[107]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[108]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[109]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[110]
  end

  ['Innsbruck Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[111]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[112]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[113]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[114]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[115]
  end

  ['Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[116]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[117]
  end

  ['Innsbruck Airport','Munich Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[118]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[119]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[120]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[121]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[122]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[123]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[124]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[125]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[126]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Memmingen Airport','Milan Malpensa Airport','Munich Airport','Salzburg Airport','Vienna Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Munich City Centre','Salzburg City Centre','Vienna City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[127]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[128]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[129]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[130]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[131]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Vienna Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Vienna City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[132]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[133]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[134]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[135]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[136]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[137]
  end

  ['Innsbruck Airport','Munich Airport','Salzburg Airport','Innsbruck Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[138]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Bern City Centre','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[139]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Vienna Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Vienna City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[140]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[141]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[142]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[143]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[144]
  end

  ['Munich Airport','Zurich Airport','Zurich Train Station','Munich City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[145]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[146]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[147]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[148]
  end

  ['Innsbruck Airport','Munich Airport','Innsbruck Train Station','Innsbruck City Centre','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[149]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[150]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[151]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[152]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[153]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[154]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[155]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[156]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[157]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[158]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[159]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[160]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[161]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[162]
  end

  ['Munich Airport','Zurich Airport','Zurich Train Station','Munich City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[163]
  end

  ['Munich Airport','Zurich Airport','Zurich Train Station','Munich City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[164]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[165]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[166]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[167]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[168]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[169]
  end

  ['Innsbruck Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[170]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[171]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[172]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[173]
  end

  ['Innsbruck Airport','Munich Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[174]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[175]
  end

  ['Basel Airport','Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[176]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[177]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[178]
  end

  ['Innsbruck Airport','Munich Airport','Innsbruck Train Station','Innsbruck City Centre','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[179]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[180]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[181]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[182]
  end

  ['Basel Airport','Bern Airport','Geneva Airport','Grenoble Airport','Lyon Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Geneva City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[183]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[184]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[185]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[186]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[187]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[188]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[189]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[190]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[191]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[192]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[193]
  end

  ['Innsbruck Airport','Munich Airport','Salzburg Airport','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[194]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[195]
  end

  ['Innsbruck Airport','Munich Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[196]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[197]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[198]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[199]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[200]
  end

  ['Friedrichshafen Airport','Memmingen Airport','Zurich Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[201]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[202]
  end

  ['Innsbruck Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[203]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[204]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[205]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[206]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[207]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[208]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[209]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Memmingen Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[210]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[211]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[212]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[213]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Vienna Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Vienna City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[214]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[215]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[216]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[217]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[218]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[219]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[220]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Munich Airport','Salzburg Airport','Vienna Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Vienna City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[221]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[222]
  end

  ['Salzburg Airport','Salzburg Train Station','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[223]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Geneva Airport','Innsbruck Airport','Memmingen Airport','Munich Airport','Salzburg Airport','Vienna Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Vienna City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[224]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Munich Airport','Zurich Airport','Zurich Train Station','Munich City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[225]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Memmingen Airport','Munich Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[226]
  end

  ['Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[227]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[228]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[229]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[230]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[231]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[232]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[233]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[234]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[235]
  end

  ['Innsbruck Airport','Munich Airport','Innsbruck Train Station','Innsbruck City Centre','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[236]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Innsbruck City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[237]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[238]
  end

  ['Basel Airport','Bern Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[239]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[240]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[241]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[242]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[243]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[244]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[245]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[246]
  end

  ['Innsbruck Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[247]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[248]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[249]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[250]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[251]
  end

  ['Basel Airport','Bern Airport','Munich Airport','Zurich Airport','Munich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[252]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[253]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[254]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[255]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[256]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[257]
  end

  ['Innsbruck Airport','Munich Airport','Salzburg Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[258]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Zurich Airport','Zurich Train Station','Bern City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[259]
  end

  ['Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[260]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[261]
  end

  ['Innsbruck Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[262]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[263]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[264]
  end

  ['Innsbruck Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[265]
  end

  ['Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[266]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Munich Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Salzburg Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[267]
  end

  ['Basel Airport','Bern Airport','Innsbruck Airport','Salzburg Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Salzburg City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[268]
  end

  ['Basel Airport','Bern Airport','Salzburg Airport','Zurich Airport','Salzburg Train Station','Salzburg City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[269]
  end

  ['Basel Airport','Bern Airport','Friedrichshafen Airport','Innsbruck Airport','Memmingen Airport','Munich Airport','Zurich Airport','Innsbruck Train Station','Zurich Train Station','Bern City Centre','Innsbruck City Centre','Munich City Centre','Zurich City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[270]
  end

  ['Innsbruck Airport','Zurich Airport','Innsbruck Train Station','Innsbruck City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[271]
  end

  puts 'Pick Up Locations for Friedrichshafen'
  pick_ups = City.find_by(name: 'Friedrichshafen').pick_up_locations.reorder('id asc')
  ['Bludenz','Bregenz','Chur','Dalaas','Davos','Dornbirn','Feldkirch','Galtur','Gotzis','Innsbruck City Centre','Interlaken','Ischgl','Langenfeld','Lech am Arlberg','Lustenau','Obergurgl','Sankt Leonhard im Pitztal','Schruns','Solden','St Anton am Arlberg','St Christoph am Arlberg','St Gallen','St Gallenkirch','St Jakob am Arlberg','St Moritz','Vaduz','Zurich City Centre','Zurs'].each do |drop_off|
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
  ['Manchester Airport','Manchester City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Manchester Airport','Manchester Airport Hotel','Manchester City Centre'].each do |drop_off|
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
  ['Ljubljana Airport','Zagreb Airport','Ljubljana City Centre','Zagreb City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Belgrade Airport','Ljubljana Airport','Osijek Airport','Split Airport','Zadar Airport','Zagreb Airport','Ljubljana City Centre','Zadar City Centre','Zagreb City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  puts 'Pick Up Locations for Pula'
  pick_ups = City.find_by(name: 'Pula').pick_up_locations.reorder('id asc')

  ['Ljubljana Airport','Ljubljana City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Belgrade Airport','Ljubljana Airport','Olbia Airport','Osijek Airport','Split Airport','Vienna Airport','Zadar Airport','Zagreb Airport','Ljubljana City Centre','Vienna City Centre','Zagreb City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  puts 'Pick Up Locations for Bydgoszcz'
  pick_ups = City.find_by(name: 'Bydgoszcz').pick_up_locations.reorder('id asc')
  ['Gdansk City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Gdansk Airport','Modlin Airport','Warsaw Airport','Wroclaw Airport','Gdansk City Centre','Wroclaw City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  puts 'Pick Up Locations for Eindhoven'
  pick_ups = City.find_by(name: 'Eindhoven').pick_up_locations.reorder('id asc')
  ['Brussels Airport','Rotterdam Airport','Amsterdam Cruise Port','Rotterdam Cruise Port','Rotterdam Europoort','Amsterdam Train Station','Eindhoven','Almere','Alphen aan den Rijn','Amersfoort','Amstelveen','Amsterdam City Centre','Amsterdam Movenpick Hotel','Amsterdam North','Amsterdam Zeeburg','Antwerp City Centre','Apeldoorn','Arnhem','Assen','Bergen NL','Beverwijk','Breda','Bree','Breukelen','Brussels City Centre','Bussum','Capelle aan den IJssel','De Ruijterkade Oost','Delft','Deventer','Doorwerth','Dordrecht','Eemnes','Elst','Emmen','Enschede','Etten Leur','Gorinchem','Gorssel','Groningen','Haarlem','Harlingen','Heerlen','Helmond','Hengelo','Hilversum','Hoogeveen','Hoorn','Huizen','IJmuiden','Leeuwarden','Leiden','Lelystad','Lisse','Lommel','Loosdrecht','Maastricht','Muiden','Nijmegen','Noordwijk','Noordwijkerhout','Oegstgeest','Oss','Poortugaal','Purmerend','Rijnsburg','Rijswijk','Roosendaal','Rotterdam City Centre','Sittard','Sneek','Spier','Terneuzen','The Hague','Tiel','Tilburg','Uden','Utrecht','Venlo','Vianen','Vlaardingen','Vlissingen','Wassenaar','Weesp','Westpoort','Woerden','Woudsend','Zaandam','Zandvoort','Zeeburg','Zeist','Zoetermeer','Zwolle','s Hertogenbosch'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Amsterdam Schiphol Airport','Brussels Airport','Charleroi Airport','Dusseldorf Airport','Eindhoven Airport','Rotterdam Airport','Brussels City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  puts 'Pick Up Locations for Toulon'
  pick_ups = City.find_by(name: 'Toulon').pick_up_locations.reorder('id asc')
  ['Marseille Train Station','Marseille City Centre','Marseille Port'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Marseille Airport','Nice Airport','Aix en Provence','Marseille City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  puts 'Pick Up Locations for Forli'
  pick_ups = City.find_by(name: 'Forli').pick_up_locations.reorder('id asc')
  ['Parma Airport','Pescara Airport','Rimini Airport','Civitavecchia Cruise Port','Livorno Cruise Port','Ravenna','Arezzo','Ascoli Piceno','Belluno','Bergamo City Centre','Brescia','Cremona','Faenza','Fermo','Ferrara','Florence City Centre','Genoa City Centre','La Spezia','Lodi','Lucca','Macerata','Mantova','Milan City Centre','Modena','Padova','Parma','Pavia','Perugia','Pesaro','Pescara City Centre','Piacenza','Pisa City Centre','Pistoia','Prato','Reggio Emilia','Rimini','Rome City Centre','Rovigo','Savona','Siena','Teramo','Terni','Trento','Treviso City Centre','Trieste City Centre','Venice Piazzale Roma','Verona City Centre','Vicenza'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Parma Airport','Pescara Airport','Rimini Airport','Civitavecchia Cruise Port','Livorno Cruise Port','Ravenna','Arezzo','Ascoli Piceno','Belluno','Bergamo City Centre','Brescia','Cremona','Faenza','Fermo','Ferrara','Florence City Centre','Genoa City Centre','La Spezia','Lodi','Lucca','Macerata','Mantova','Milan City Centre','Modena','Padova','Parma','Pavia','Perugia','Pesaro','Pescara City Centre','Piacenza','Pisa City Centre','Pistoia','Prato','Reggio Emilia','Rimini','Rome City Centre','Rovigo','Savona','Siena','Teramo','Terni','Trento','Treviso City Centre','Trieste City Centre','Venice Piazzale Roma','Verona City Centre','Vicenza'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  ['Ancona Airport','Bergamo Airport','Bologna Airport','Forli Airport','Rimini Airport','Ravenna','Ancona','Bergamo City Centre','Bologna City Centre','Forli','Rimini'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[2]
  end

  puts 'Pick Up Locations for Alexandria'
  pick_ups = City.find_by(name: 'Alexandria').pick_up_locations.reorder('id asc')
  ['Cairo Airport','Dabaa Alalamain Airport','Marsa Matrouh','Alexandria City Centre','Cairo City Centre','Dabaa'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Alexandria Airport','Cairo Airport','Dabaa Alalamain Airport','Cairo City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  ['Alexandria Airport','Cairo Airport','Cairo City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[2]
  end

  puts 'Pick Up Locations for Taba'
  pick_ups = City.find_by(name: 'Taba').pick_up_locations.reorder('id asc')
  ['Nuweiba Port','Sinai Bay Club Med','Dahab','Nuweiba','Sharm El Sheikh Hotels','Taba'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Sharm El Sheikh Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  ['Sharm El Sheikh Airport','Taba Airport','Nuweiba Port','Sharm El Sheikh Port','Dahab','Nuweiba','Sharm El Sheikh Hotels'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[2]
  end

  puts 'Pick Up Locations for Cologne'
  pick_ups = City.find_by(name: 'Cologne').pick_up_locations.reorder('id asc')
  ['Brussels Airport','Charleroi Airport','Cologne Bonn Airport','Dusseldorf Airport','Frankfurt Airport','Hahn Airport','Brussels Central Train Station','Brussels Midi Train Station','Brussels Nord Train Station','Frankfurt Train Station','Brussels City Centre','Frankfurt City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Brussels Airport','Charleroi Airport','Cologne Bonn Airport','Dusseldorf Airport','Frankfurt Airport','Hahn Airport','Brussels Central Train Station','Brussels Midi Train Station','Brussels Nord Train Station','Frankfurt Train Station','Brussels City Centre','Frankfurt City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  ['Brussels Airport','Charleroi Airport','Cologne Bonn Airport','Dusseldorf Airport','Brussels Central Train Station','Brussels Midi Train Station','Brussels Nord Train Station','Brussels City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[2]
  end

  puts 'Pick Up Locations for Rimini'
  pick_ups = City.find_by(name: 'Rimini').pick_up_locations.reorder('id asc')
  ['Forli Airport','Livorno Cruise Port','Pesaro','Terni','Ancona','Arezzo','Ascoli Piceno','Bergamo City Centre','Brescia','Chieti','Cremona','Faenza','Fermo','Ferrara','Florence City Centre','Forli','La Spezia','Lodi','Lucca','Macerata','Mantova','Milan City Centre','Modena','Padova','Parma','Pavia','Pescara City Centre','Piacenza','Pisa City Centre','Pistoia','Prato','Ravenna','Reggio Emilia','Rome City Centre','Rovigo','Savona','Siena','Teramo','Treviso City Centre','Trieste City Centre','Turin City Centre','Venice Piazzale Roma','Verona City Centre','Vicenza'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Bergamo Airport','Bologna Airport','Forli Airport','Rimini Airport','Pesaro','Bergamo City Centre','Bologna City Centre','Forli','Rimini'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  ['Bologna Airport','Forli Airport','Livorno Cruise Port','Pesaro','Terni','Ancona','Arezzo','Ascoli Piceno','Bergamo City Centre','Brescia','Chieti','Cremona','Faenza','Fermo','Ferrara','Florence City Centre','Forli','La Spezia','Lodi','Lucca','Macerata','Mantova','Milan City Centre','Modena','Padova','Parma','Pavia','Pescara City Centre','Piacenza','Pisa City Centre','Pistoia','Prato','Ravenna','Reggio Emilia','Rome City Centre','Rovigo','Savona','Siena','Teramo','Treviso City Centre','Trieste City Centre','Turin City Centre','Venice Piazzale Roma','Verona City Centre','Vicenza'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[2]
  end

  ['Forli Airport','Rimini Airport','Pesaro','Forli','Rimini'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[3]
  end

  puts 'Pick Up Locations for Moscow'
  pick_ups = City.find_by(name: 'Moscow').pick_up_locations.reorder('id asc')
  ['Moscow City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Moscow Vnukovo Airport','Moscow City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  ['Moscow Sheremetyevo Airport','Moscow City Centre'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[2]
  end

  ['Moscow Domodedovo Airport','Moscow Sheremetyevo Airport','Moscow Vnukovo Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[3]
  end

  puts 'Pick Up Locations for Bremen'
  pick_ups = City.find_by(name: 'Bremen').pick_up_locations.reorder('id asc')
  ['Bremen City Centre','Bremen Airport','Oldenburg','Hamburg City Centre','Hannover','Osnabruck'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Hamburg Airport','Hannover Airport','Bremen City Centre','Bremen Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  ['Hamburg Airport','Bremen City Centre','Bremen Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[2]
  end

  ['Dusseldorf Airport','Bremen City Centre','Bremen Airport'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[3]
  end

  puts 'Pick Up Locations for Aswan'
  pick_ups = City.find_by(name: 'Aswan').pick_up_locations.reorder('id asc')
  ['Luxor Airport','Marsa Alam Airport','Aswan Port','Luxor Port','Aswan','Abu Simbel','Luxor Hotels','Marsa Alam'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[0]
  end

  ['Aswan Airport','Luxor Airport','Aswan','Luxor Hotels'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[1]
  end

  ['Aswan Airport','Aswan'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[2]
  end

  ['Aswan Airport','Luxor Airport','Marsa Alam Airport','Aswan Port','Luxor Port','Aswan','Abu Simbel','Luxor Hotels','Marsa Alam'].each do |drop_off|
    aux = DropOffLocation.find_or_create_by(name: drop_off)
    aux.pick_up_locations << pick_ups[3]
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


  puts '--------- End of Drop Off Locations Seeds File -----------'
end