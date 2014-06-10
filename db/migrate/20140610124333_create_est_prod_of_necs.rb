class CreateEstProdOfNecs < ActiveRecord::Migration
  def change
    create_table :est_prod_of_necs do |t|
      t.belongs_to :estado_prod_of_necesidad, index: true
      t.string :estado_prod_of_necesidad_nombre

      t.timestamps
    end
  end
end
