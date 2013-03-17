class AddDetailsToParty < ActiveRecord::Migration
  def change
    add_column :parties, :party_name, :string
    add_column :parties, :mailing_address, :string
    add_column :parties, :city, :string
    add_column :parties, :state, :string
    add_column :parties, :zip, :string
  end
end
