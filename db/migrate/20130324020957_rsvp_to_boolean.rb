class RsvpToBoolean < ActiveRecord::Migration
  def up
    change_column :parties, :rsvp, :boolean
  end

  def down
  end
end
