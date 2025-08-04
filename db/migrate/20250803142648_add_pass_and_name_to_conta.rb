class AddPassAndNameToConta < ActiveRecord::Migration[8.0]
  def change
    add_column :conta, :nome, :string
    add_column :conta, :password, :string
  end
end
