class CreateClaseUnits < ActiveRecord::Migration
  def change
    create_table :clase_units do |t|
      t.belongs_to :clase, index: true
      t.belongs_to :cla_clase, index: true
      t.string :clase_nombre

      t.timestamps
    end
  end
end
