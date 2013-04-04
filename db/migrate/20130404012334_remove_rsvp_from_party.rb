class RemoveRsvpFromParty < ActiveRecord::Migration
  def up
    remove_column :parties, :rsvp
  end

  def down
  end
end
