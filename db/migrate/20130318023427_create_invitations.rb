class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mailing_address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :party_id
      t.integer :party_size

      t.timestamps
    end
  end
end
