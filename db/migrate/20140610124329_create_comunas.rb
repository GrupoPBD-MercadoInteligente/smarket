class CreateComunas < ActiveRecord::Migration
  def change
    create_table :comunas do |t|
      t.belongs_to :comuna, index: true
      t.belongs_to :provincia, index: true
      t.string :comuna_nombre

      t.timestamps
    end
  end
end
