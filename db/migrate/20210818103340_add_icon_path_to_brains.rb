class AddIconPathToBrains < ActiveRecord::Migration[6.1]
  def change
    add_column :brains, :icon_path, :string
  end
end
