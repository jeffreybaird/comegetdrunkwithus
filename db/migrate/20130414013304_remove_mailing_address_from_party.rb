class RemoveMailingAddressFromParty < ActiveRecord::Migration
  def up
    remove_column :parties, :mailing_address
  end

  def down
    add_column :parties, :mailing_address, :string
  end
end
