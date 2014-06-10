class CreateProductoOfertados < ActiveRecord::Migration
  def change
    create_table :producto_ofertados do |t|
      t.belongs_to :producto, index: true
      t.belongs_to :producto_of, index: true
      t.belongs_to :usuario, index: true
      t.integer :producto_of_cantidad
      t.integer :producto_of_precio_unitario
      t.date :producto_of_fecha_publicacion

      t.timestamps
    end
  end
end
