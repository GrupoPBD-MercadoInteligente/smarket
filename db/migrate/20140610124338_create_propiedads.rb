class CreatePropiedads < ActiveRecord::Migration
  def change
    create_table :propiedads do |t|
      t.belongs_to :propiedad, index: true
      t.string :propiedad_nombre

      t.timestamps
    end
  end
end
