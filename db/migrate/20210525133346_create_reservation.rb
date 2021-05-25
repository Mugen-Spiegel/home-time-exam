class CreateReservation < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :guest, foreign_key: { to_table: :guests }
      t.string :total_guests
      t.string :adults
      t.string :children
      t.string :infants
      t.string :nights
      t.string :end_date
      t.string :start_date
      t.string :status
      t.string :currency
      t.string :payout_price
      t.string :security_price
      t.string :total_price
      t.text :original_payload
      t.timestamps
    end
  end
end
