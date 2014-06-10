class CreateTransaccions < ActiveRecord::Migration
  def change
    create_table :transaccions do |t|
      t.belongs_to :transaccion, index: true
      t.belongs_to :tipo_trans, index: true

      t.timestamps
    end
  end
end
