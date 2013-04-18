class Party < ActiveRecord::Base
  attr_accessible :id, :party_name, :address1, :address2, :city, :state, :zip, :reservation_id, :party_size, :invitation_id, :invitation

  has_one :invitation
  has_one :reservation
  has_many :users

  belongs_to :invitation

  def check_invitation
    return "No matched invitation" unless invitation
    "Name on invitation: #{invitation.first_name} #{invitation.last_name}"
  end


end
