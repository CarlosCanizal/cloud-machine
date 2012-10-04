class Machine < ActiveRecord::Base
  attr_accessible :description, :name, :number

  #associations
  has_many :shifts
end
