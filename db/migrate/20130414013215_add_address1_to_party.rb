class AddAddress1ToParty < ActiveRecord::Migration
  def change
    add_column :parties, :address1, :string
  end
end
