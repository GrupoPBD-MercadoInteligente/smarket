class CreateNotificacions < ActiveRecord::Migration
  def change
    create_table :notificacions do |t|
      t.belongs_to :notificacion, index: true
      t.belongs_to :usuario, index: true
      t.belongs_to :estado_not, index: true
      t.string :notificacio_titulo
      t.string :notificacion_texto

      t.timestamps
    end
  end
end
