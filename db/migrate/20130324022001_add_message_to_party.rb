class AddMessageToParty < ActiveRecord::Migration
  def change
    add_column :parties, :message, :string
  end
end
