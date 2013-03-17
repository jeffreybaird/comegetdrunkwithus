class AddReservationIdToParty < ActiveRecord::Migration
  def change
    add_column :parties, :reservation_id, :integer
  end
end
