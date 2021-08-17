class AddRatingToBrains < ActiveRecord::Migration[6.1]
  def change
    add_column :brains, :rating, :float
  end
end
