class AddCoordinatesToBrains < ActiveRecord::Migration[6.1]
  def change
    add_column :brains, :latitude, :float
    add_column :brains, :longitude, :float
  end
end
