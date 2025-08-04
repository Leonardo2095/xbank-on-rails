class ChangeUniqueFromPass < ActiveRecord::Migration[8.0]
  def change
    remove_index :conta, :password
  end
end
