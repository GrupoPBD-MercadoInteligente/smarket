class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|
      t.belongs_to :auditoria, index: true
      t.string :auditoria_usuario
      t.string :auditoria_tabla_mod
      t.string :auditoria_operacion
      t.date :auditoria_fecha
      t.string :auditoria_attr_mod
      t.string :auditoria_antes
      t.string :auditoria_despues

      t.timestamps
    end
  end
end
