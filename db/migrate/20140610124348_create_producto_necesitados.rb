class CreateProductoNecesitados < ActiveRecord::Migration
  def change
    create_table :producto_necesitados do |t|
      t.belongs_to :producto, index: true
      t.belongs_to :prod_nec, index: true
      t.belongs_to :usuario, index: true
      t.integer :prod_nec_cantidad
      t.integer :prod_nec_preciotope
      t.date :prod_nec_fecha_publicacion

      t.timestamps
    end
  end
end
