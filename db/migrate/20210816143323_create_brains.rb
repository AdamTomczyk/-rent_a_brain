class CreateBrains < ActiveRecord::Migration[6.1]
  def change
    create_table :brains do |t|
      t.string :name
      t.text :description
      t.integer :iq
      t.integer :eq
      t.integer :price_per_minute

      t.timestamps
    end
  end
end
