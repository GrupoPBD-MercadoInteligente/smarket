class CreateEstadoNotificacions < ActiveRecord::Migration
  def change
    create_table :estado_notificacions do |t|
      t.belongs_to :estado_not, index: true
      t.string :estado_not_nombre

      t.timestamps
    end
  end
end
