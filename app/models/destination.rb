class Destination < ActiveRecord::Base
  attr_accessible :name


  #associations
  has_many :products
end
