class CreateGananciaLiquidas < ActiveRecord::Migration
  def change
    create_table :ganancia_liquidas do |t|
      t.belongs_to :ganancia_liquida, index: true
      t.belongs_to :transaccion, index: true
      t.integer :ganancia_liquida_monto

      t.timestamps
    end
  end
end
