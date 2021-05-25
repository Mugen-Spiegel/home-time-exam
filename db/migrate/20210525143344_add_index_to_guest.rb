class AddIndexToGuest < ActiveRecord::Migration[6.0]
  def change
    add_index :guests, [:service_name, :guest_email], unique: true
  end
end
