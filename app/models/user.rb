class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :party_id, :email

  belongs_to :party

  accepts_nested_attributes_for :party

  validates :first_name, :presence => {:message => 'Please enter your first name'}
  validates :last_name, :presence => {:message => 'Please enter your last name'}
  validates :email, :presence => {:message => 'Please enter your email'}

  delegate :mailing_address, :city, :state, :zip, :party_size, :to => :party
end
