class Party < ActiveRecord::Base
  attr_accessible :id, :party_name, :mailing_address, :city, :state, :zip, :reservation_id, :party_size, :invitation_id, :invitation

  has_one :invitation
  has_one :reservation
  has_many :users

  belongs_to :invitation


  #before_save :rsvp_to_boolean

  def check_invitation
    return "No matched invitation" unless invitation
    "Name on invitation: #{invitation.first_name} #{invitation.last_name}"
  end

  def rsvp_to_boolean
    if rsvp == 'Yes'
      rsvp = true
    else
      rsvp = false
    end
  end

end
