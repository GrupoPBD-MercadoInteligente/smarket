class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.belongs_to :producto, index: true
      t.belongs_to :clase, index: true
      t.string :producto_nombre

      t.timestamps
    end
  end
end
