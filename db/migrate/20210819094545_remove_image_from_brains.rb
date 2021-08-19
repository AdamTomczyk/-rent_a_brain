class RemoveImageFromBrains < ActiveRecord::Migration[6.1]
  def change
    remove_column :brains, :image, :string
  end
end
