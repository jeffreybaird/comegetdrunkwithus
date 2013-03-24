class AddRsvpToParty < ActiveRecord::Migration
  def change
    add_column :parties, :rsvp, :string
  end
end
