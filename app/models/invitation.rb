class Invitation < ActiveRecord::Base

  attr_accessible :city, :email, :first_name, :last_name, :address1, :address2, :party_id, :party_size, :state, :zip

  validates_uniqueness_of :email

  validates :first_name, :last_name, :address1, :city, :state, :zip, :presence => "please_enter #{self}"

  def to_s
    "Name: #{last_name}, Id: #{id}"
  end



end
