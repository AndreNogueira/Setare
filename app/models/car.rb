class Car < ActiveRecord::Base


  belongs_to :category
  belongs_to :agency
end
