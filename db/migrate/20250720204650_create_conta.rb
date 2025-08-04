class CreateConta < ActiveRecord::Migration[8.0]
  def change
    create_table :conta do |t|
      t.decimal :saldo

      t.timestamps
    end
  end
end
