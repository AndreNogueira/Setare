module CarHelper
  def pcountry_name id
    name = Country.find(id).name
  end
  def pcity_name id
    name = City.find(id).name
  end
  def dcountry_name id
    name = Country.find(id).name
  end
  def dcity_name id
    name = City.find(id).name
  end
  def get_car id
    car = Car.find(id)
  end
  def calc_rent_price car_price, begin_date, end_date
    total_days = (Date.parse(end_date) - Date.parse(begin_date)).to_i
    if total_days == 0
      total_days = 1
    end
    rent_price = total_days * car_price
  end
end
