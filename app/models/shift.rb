class Shift < ActiveRecord::Base
  attr_accessible :end, :machine_id, :product_id, :start


  #associations
  belongs_to :machine
  belongs_to :product
  has_many :timedowns
end
