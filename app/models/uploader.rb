require 'csv'

module Uploader

  LastNameIndex  = 0
  FirstNameIndex = 1
  EmailIndex     = 2
  Address1Index  = 3
  Address2Index  = 4
  CityIndex      = 5
  StateIndex     = 6
  ZipIndex       = 7
  PartyIndex     = 8


  def self.create_invites(file)
    data = Array.new

    CSV.foreach(file) do |entry|
      data << entry
    end


    data.each do |row|

      Invitation.create({:last_name => row[LastNameIndex],
                       :first_name => row[FirstNameIndex],
                       :email => row[EmailIndex],
                       :address1 => row[Address1Index],
                       :address2 => row[Address2Index],
                       :state => row[StateIndex],
                       :city => row[CityIndex],
                       :zip => row[ZipIndex],
                       :party_size => row[PartyIndex]}) #rescue "an invitation with email: #{row[EmailIndex]} already exists"
    end
  end
end
