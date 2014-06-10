class CreateRemates < ActiveRecord::Migration
  def change
    create_table :remates do |t|
      t.belongs_to :sub, index: true
      t.belongs_to :estado_subasta, index: true
      t.belongs_to :usuario, index: true
      t.belongs_to :prod_sub, index: true
      t.integer :sub_monto_max
      t.date :sub_fecha_inicio
      t.date :sub_fecha_termino

      t.timestamps
    end
  end
end
