class AddCategoryToBrains < ActiveRecord::Migration[6.1]
  def change
    add_column :brains, :category, :string
  end
end
