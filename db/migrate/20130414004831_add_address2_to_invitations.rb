class AddAddress2ToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :address2, :string
  end
end
