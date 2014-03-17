# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(100)      not null
#  bi              :integer          not null
#  email           :string(50)       not null
#  password        :string(50)       not null
#  driver_license  :string(12)       not null
#  nif             :integer          not null
#  address         :string(200)      not null
#  phone_number    :integer          not null
#  user_profile_id :integer          not null
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  belongs_to :user_profile
  has_many :car_services
  has_many :taxi_services

  # Scopes
  # Class Methods
  # Validations
  # Callbacks
  # Instance Methods

end
