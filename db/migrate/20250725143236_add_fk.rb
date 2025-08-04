class AddFk < ActiveRecord::Migration[8.0]
  def change
    add_reference :conta, :user, null: true, foreign_key: true
    add_reference :transacaos, :conta, null: true, foreign_key:true
  end
end
