class Party < ActiveRecord::Base
  attr_accessible :id, :party_name, :mailing_address, :city, :state, :zip, :reservation_id, :party_size

  belongs_to :reservation
  accepts_nested_attributes_for :reservation


  delegate :party_size, :to => :reservation

end
