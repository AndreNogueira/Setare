class User < ActiveRecord::Base

  belongs_to :user_profile
  has_many :car_services

end
