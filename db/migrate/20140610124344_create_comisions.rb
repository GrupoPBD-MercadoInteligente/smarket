class CreateComisions < ActiveRecord::Migration
  def change
    create_table :comisions do |t|
      t.belongs_to :comision, index: true
      t.belongs_to :transaccion, index: true
      t.integer :comision_monto

      t.timestamps
    end
  end
end
