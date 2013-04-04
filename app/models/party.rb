class Party < ActiveRecord::Base
  attr_accessible :id, :party_name, :mailing_address, :city, :state, :zip, :reservation_id, :invitation_id

  has_one :reservation
  has_many :users


  #before_save :rsvp_to_boolean

  def rsvp_to_boolean
    if rsvp == 'Yes'
      rsvp = true
    else
      rsvp = false
    end
  end

end
