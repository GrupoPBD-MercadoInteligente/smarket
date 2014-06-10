class CreateProductoRematados < ActiveRecord::Migration
  def change
    create_table :producto_rematados do |t|
      t.belongs_to :producto, index: true
      t.belongs_to :prod_sub, index: true
      t.integer :prod_sub_cantidad
      t.integer :prod_sub_precio_unitario

      t.timestamps
    end
  end
end
