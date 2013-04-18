require 'test_helper'
require 'csv'

class UploaderTest < ActiveSupport::TestCase


  context "self.create_invites" do
    should "create an invite from a csv file" do

      file = Rails.root.join("tmp","test.csv")
      addy = ["Berry", "Sanders","b@example.com", "123 johnny", "Apt1","Tampa", "FL", "33611", "2"]

      CSV.open(file, "w+") do |csv|
        csv << addy
      end

      Uploader.create_invites(file)

      assert File.exists?(file), "#{file} should exist"
      assert Invitation.find_by_email("b@example.com"), "an invitation should exist with the email b@example.com"

      File.delete(file)

      assert !File.exists?(file)

    end
  end
end
