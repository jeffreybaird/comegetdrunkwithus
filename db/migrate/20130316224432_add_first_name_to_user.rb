class AddFirstNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :fist_name, :string
  end
end
