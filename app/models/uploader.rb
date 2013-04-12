require 'csv'

class Uploader

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
    CSV.foreach(file) do |row|
      Invitation.create!(:last_name => row[LastNameIndex],
                     :first_name => row[FirstNameIndex],
                     :email => row[EmailIndex],
                     :mailing_address => row[Address1Index],
                     :state => row[StateIndex],
                     :city => row[CityIndex],
                     :zip => row[ZipIndex],
                     :party_size => row[PartyIndex])
    end
  end
end
