class CreateCompraVentaNormals < ActiveRecord::Migration
  def change
    create_table :compra_venta_normals do |t|
      t.belongs_to :tipo_trans, index: true
      t.integer :compraventa_id2
      t.belongs_to :usuario, index: true
      t.belongs_to :usu_usuario, index: true
      t.belongs_to :producto_of, index: true
      t.date :compraventanor_fecha

      t.timestamps
    end
  end
end
