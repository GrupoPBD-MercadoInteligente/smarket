class CreateEstadoRemates < ActiveRecord::Migration
  def change
    create_table :estado_remates do |t|
      t.belongs_to :estado_subasta, index: true
      t.string :estado_subasta_nombre

      t.timestamps
    end
  end
end
