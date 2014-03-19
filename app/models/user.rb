# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(100)      not null
#  bi                     :string(15)       not null
#  driver_license         :string(12)       not null
#  nif                    :string(15)       not null
#  address                :string(200)      not null
#  phone_number           :string(15)       not null
#  user_profile_id        :integer          not null
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)      not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  users_user_profile_id_fk             (user_profile_id)
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
  before_save :add_user_profile

  def add_user_profile
    self.user_profile = UserProfile.first if self.user_profile.nil?
  end
  # Instance Methods

end
