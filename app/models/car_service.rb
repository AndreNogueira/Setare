# == Schema Information
#
# Table name: car_services
#
#  id                     :integer          not null, primary key
#  service_begin          :datetime         not null
#  service_end            :datetime         not null
#  gps                    :boolean          default(FALSE), not null
#  baby_seat              :boolean          default(FALSE), not null
#  insurance              :boolean          default(FALSE), not null
#  additional_driver      :boolean          default(FALSE), not null
#  final_price            :decimal(10, 2)   not null
#  car_id                 :integer          not null
#  user_id                :integer          not null
#  pick_up_subsidiary_id  :integer          not null
#  drop_off_subsidiary_id :integer          not null
#  created_at             :datetime
#  updated_at             :datetime
#

class CarService < ActiveRecord::Base

  belongs_to :car
  belongs_to :user

  belongs_to :pick_up_location, class_name:'Subsidiary', foreign_key: 'pick_up_subsidiary_id'
  belongs_to :drop_off_location, class_name:'Subsidiary', foreign_key: 'drop_off_subsidiary_id'


end
