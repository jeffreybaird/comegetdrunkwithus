class AddAddress2ToParty < ActiveRecord::Migration
  def change
    add_column :parties, :address2, :string
  end
end
