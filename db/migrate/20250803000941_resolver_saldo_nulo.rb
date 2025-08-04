class ResolverSaldoNulo < ActiveRecord::Migration[8.0]
  def change
    change_column_default :conta, :saldo, 0
  end
end
