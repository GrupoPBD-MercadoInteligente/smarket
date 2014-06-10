class CreateCompraVentaEspecials < ActiveRecord::Migration
  def change
    create_table :compra_venta_especials do |t|
      t.belongs_to :tipo_trans, index: true
      t.belongs_to :compraventa, index: true
      t.belongs_to :usuario, index: true
      t.belongs_to :prod_of_nec, index: true
      t.belongs_to :usu_usuario, index: true
      t.date :compraventanor_fecha

      t.timestamps
    end
  end
end
