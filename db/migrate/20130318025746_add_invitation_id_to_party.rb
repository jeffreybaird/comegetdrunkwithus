class AddInvitationIdToParty < ActiveRecord::Migration
  def change
    add_column :parties, :invitation_id, :integer
  end
end
