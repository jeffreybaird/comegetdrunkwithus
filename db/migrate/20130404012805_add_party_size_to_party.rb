class AddPartySizeToParty < ActiveRecord::Migration
  def change
    add_column :parties, :party_size, :integer
  end
end
