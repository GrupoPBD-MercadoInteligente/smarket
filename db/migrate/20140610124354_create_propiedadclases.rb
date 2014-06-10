class CreatePropiedadclases < ActiveRecord::Migration
  def change
    create_table :propiedadclases do |t|
      t.belongs_to :propiedad, index: true
      t.belongs_to :clase, index: true

      t.timestamps
    end
  end
end
