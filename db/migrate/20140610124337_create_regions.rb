class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.belongs_to :region, index: true
      t.string :region_nombre

      t.timestamps
    end
  end
end
