class AddAttendingToUser < ActiveRecord::Migration
  def change
    add_column :users, :attending, :boolean
  end
end
