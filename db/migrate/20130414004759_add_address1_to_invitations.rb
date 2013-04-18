class AddAddress1ToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :address1, :string
  end
end
