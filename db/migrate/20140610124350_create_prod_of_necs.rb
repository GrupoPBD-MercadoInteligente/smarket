class CreateProdOfNecs < ActiveRecord::Migration
  def change
    create_table :prod_of_necs do |t|
      t.belongs_to :producto, index: true
      t.belongs_to :prod_of_nec, index: true
      t.belongs_to :usuario, index: true
      t.belongs_to :estado_prod_of_necesidad, index: true
      t.belongs_to :prod_nec, index: true
      t.integer :prod_of_nec_cantidad
      t.integer :prod_of_nec_precio_unitario
      t.date :prod_of_nec_fecha_publicacion

      t.timestamps
    end
  end
end
