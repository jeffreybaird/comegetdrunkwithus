require 'test_helper'

class InvitationTest < ActiveSupport::TestCase
  context "to_s" do
    should "return a formatted object instead of an object id" do
      invitation = Invitation.create!(:first_name => "Jeff", :email => "jlbaird87@gmail.com", :last_name => "Baird")
      assert_equal "Name: Baird, Id: #{invitation.id}", invitation.to_s
    end
  end
end
