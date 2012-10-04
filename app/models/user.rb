class User < ActiveRecord::Base
  attr_accessible :birthdate, :email, :gender_id, :lastname_1, :lastname_2, :name, :password, :phone, :picture, :role_id

  class << self
    def genders()
      genders = {
        1 => 'Male',
        2 => 'Female'
      }
    end
  end

  #relations
  belongs_to :role
end
