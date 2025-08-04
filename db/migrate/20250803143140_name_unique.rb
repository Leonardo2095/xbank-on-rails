class NameUnique < ActiveRecord::Migration[8.0]
  def change
    add_index :conta, :password, unique: true
  end
end
