class User < ActiveRecord::Base
  attr_accessible :description, :email, :username

  # has_many :stylists
  # belongs_to :stylist

  has_and_belongs_to_many :stylists
  has_many :photos
end
