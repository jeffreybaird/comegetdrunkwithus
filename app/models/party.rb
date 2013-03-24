class Party < ActiveRecord::Base
  attr_accessible :id, :party_name, :mailing_address, :city, :state, :zip, :reservation_id, :party_size, :invitation_id, :rsvp, :message

  belongs_to :reservation
  accepts_nested_attributes_for :reservation

  before_save :rsvp_to_boolean


  delegate :party_size, :to => :reservation

  def rsvp_to_boolean
    if rsvp == 'Yes'
      rsvp = true
    else
      rsvp = false
    end
  end

end
