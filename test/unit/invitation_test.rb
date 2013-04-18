require 'test_helper'

class InvitationTest < ActiveSupport::TestCase
  context "to_s" do
    should "return a formatted object instead of an object id" do
      invitation = Invitation.find_by_email("jlbaird87@gmail.com")
      assert_equal "Name: Baird, Id: #{invitation.id}", invitation.to_s
    end
  end
end
