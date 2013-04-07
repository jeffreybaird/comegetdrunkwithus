class Invitation < ActiveRecord::Base
  attr_accessible :city, :email, :first_name, :last_name, :mailing_address, :party_id, :party_size, :state, :zip

  def to_s
    "Name: #{last_name}, Id: #{id}"
  end

end
