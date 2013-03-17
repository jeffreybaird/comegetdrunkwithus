class Party < ActiveRecord::Base
  attr_accessible :id, :party_name, :mailing_address, :city, :state, :zip
end
