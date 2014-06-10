class CreateProvinciaUnits < ActiveRecord::Migration
  def change
    create_table :provincia_units do |t|
      t.belongs_to :provincia, index: true
      t.belongs_to :region, index: true
      t.string :provincia_nombre

      t.timestamps
    end
  end
end
