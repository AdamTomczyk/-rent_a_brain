class AddFullnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :fullname, "text"
    add_reference :brains, :user, foreign_key: true
  end
end
