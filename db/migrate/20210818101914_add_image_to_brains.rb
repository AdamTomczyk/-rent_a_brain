class AddImageToBrains < ActiveRecord::Migration[6.1]
  def change
    add_column :brains, :image, :string
  end
end
