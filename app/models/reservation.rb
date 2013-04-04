class Reservation < ActiveRecord::Base

  attr_accessible :party_size

  has_one :party
  has_many :users

end
