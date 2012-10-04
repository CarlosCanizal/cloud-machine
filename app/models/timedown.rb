class Timedown < ActiveRecord::Base
  attr_accessible :description, :end, :shift_id, :start

  #associations
  belongs_to :shift
end
