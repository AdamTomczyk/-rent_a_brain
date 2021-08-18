class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :brain, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :availability
      t.integer :total

      t.timestamps
    end
  end
end
