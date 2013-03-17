class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string
    add_column :users, :email, :string
  end
end
