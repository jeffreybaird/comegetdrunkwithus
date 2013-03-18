require 'test_helper'

class UserTest < ActiveSupport::TestCase

  # context "check_for_invitations" do

  test "that the user matches an invitation if an invitation exists" do

    @invitation = Invitation.new(:first_name => "Jeff", :email => "jlbaird87@gmail.com")

    p @invitation

    @party = Party.new(:id => 1, :party_name => "Baird")

    @user = User.new(:id => 1, :first_name => "Jeff", :last_name => "Baird", :email => "jlbaird87@gmail.com", :party_id => @party.id)
    @user.party = @party

    p Invitation.find_by_email(@user.email)

    p @user

    p @user.check_for_invitation

    p @user.party
  end

# end

end
