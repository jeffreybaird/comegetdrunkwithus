class RemoveIndexFromAdminUser < ActiveRecord::Migration
  def up
    remove_index(:admin_users, :column => :email)
  end

  def down
  end
end
