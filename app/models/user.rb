class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :party_id, :email, :attending, :message

  belongs_to :party
  accepts_nested_attributes_for :party

  #has_one :party

  validates :first_name, :presence => {:message => 'Please enter your first name'}
  validates :last_name, :presence => {:message => 'Please enter your last name'}
  validates :email, :presence => {:message => 'Please enter your email'}


  before_save :check_for_invitation

  def check_for_invitation

    invitation = Invitation.find_by_email(email)

    unless invitation.nil?
      party.invitation_id = invitation.id
      party.save
    end

  end

end
