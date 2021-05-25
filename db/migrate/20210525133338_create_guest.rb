class CreateGuest < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|
      t.string :service_name
      t.integer :guest_id
      t.string :guest_email
      t.string :guest_first_name
      t.string :guest_last_name
      t.string :guest_phone_numbers
      t.timestamps
    end
  end
end
