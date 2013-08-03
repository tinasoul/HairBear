class Stylist < ActiveRecord::Base
  attr_accessible :email, :username

  # has_many :users
  # belongs_to :user

  has_and_belongs_to_many :users
  belongs_to :salon
end
