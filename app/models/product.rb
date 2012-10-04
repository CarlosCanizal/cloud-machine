class Product < ActiveRecord::Base
  attr_accessible :description, :destination_id, :name, :picture, :price, :size_id, :sku

  #associations
  belongs_to :size
  belongs_to :destination
  has_many :shifts
end
