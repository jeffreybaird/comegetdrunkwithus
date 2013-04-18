class RemoveMailingAddressFromInvitations < ActiveRecord::Migration
  def up

    remove_column :invitations, :mailing_address
  end

  def down
  end
end
