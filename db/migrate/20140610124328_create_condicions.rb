class CreateCondicions < ActiveRecord::Migration
  def change
    create_table :condicions do |t|
      t.belongs_to :condicion, index: true
      t.belongs_to :tipo_trans, index: true
      t.float :condicion_porcentaje_comision

      t.timestamps
    end
  end
end
