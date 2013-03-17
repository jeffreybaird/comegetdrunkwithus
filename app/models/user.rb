class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :party_id, :email

  validates :first_name, :presence => {:message => 'Please enter your first name'}
  validates :last_name, :presence => {:message => 'Please enter your last name'}
  validates :email, :presence => {:message => 'Please enter your email'}

  belongs_to :party
end
