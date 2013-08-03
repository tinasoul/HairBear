class Salon < ActiveRecord::Base
  attr_accessible :address, :email, :phone_number, :salon_name

  has_many :stylists
end
