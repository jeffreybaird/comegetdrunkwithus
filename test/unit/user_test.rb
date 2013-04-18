require 'test_helper'

class UserTest < ActiveSupport::TestCase

  context "check_for_invitations" do

  should "that the user matches an invitation if an invitation exists" do

      invitation = Invitation.find_by_email("jlbaird87@gmail.com")

      party = Party.new(:id => 1, :party_name => "Baird")
      user = User.new(:id => 1, :first_name => "Jeff", :last_name => "Baird", :email => "jlbaird87@gmail.com", :party_id => party.id)
      user.party = party

      assert user.check_for_invitation
      assert_equal invitation.id, user.party.invitation.id

    end

  end

end
