class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.belongs_to :usuario, index: true
      t.belongs_to :comuna, index: true
      t.string :usuario_nombre
      t.string :usuario_apellidopat
      t.string :usuario_apellidomat
      t.string :usuario_rut
      t.string :usuario_e_mail
      t.string :usuario_nombre_usuario
      t.string :usuario_contrasena
      t.boolean :usuario_vip
      t.string :usuario_calle
      t.integer :usuario_numero_calle
      t.string :usuario_villa
      t.integer :usuario_numero_depto
      t.integer :usuario_bloque

      t.timestamps
    end
  end
end
