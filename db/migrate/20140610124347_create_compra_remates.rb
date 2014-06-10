class CreateCompraRemates < ActiveRecord::Migration
  def change
    create_table :compra_remates do |t|
      t.belongs_to :tipo_trans, index: true
      t.belongs_to :comprasubasta, index: true
      t.belongs_to :usuario, index: true
      t.belongs_to :prod_sub, index: true
      t.belongs_to :usu_usuario, index: true
      t.date :comprasubasta_fecha

      t.timestamps
    end
  end
end
