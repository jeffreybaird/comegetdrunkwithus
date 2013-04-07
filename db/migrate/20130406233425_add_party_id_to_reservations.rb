class AddPartyIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :party_id, :integer
  end
end
