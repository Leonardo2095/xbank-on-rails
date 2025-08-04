class CreateTransacaos < ActiveRecord::Migration[8.0]
  def change
    create_table :transacaos do |t|
      t.string :tipo
      t.string :descricao
      t.decimal :valor

      t.timestamps
    end
  end
end
