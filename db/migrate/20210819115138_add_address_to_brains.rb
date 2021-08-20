class AddAddressToBrains < ActiveRecord::Migration[6.1]
  def change
    add_column :brains, :address, :string
  end
end
