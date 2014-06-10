class CreateTipoTransaccions < ActiveRecord::Migration
  def change
    create_table :tipo_transaccions do |t|
      t.belongs_to :tipo_trans, index: true

      t.timestamps
    end
  end
end
