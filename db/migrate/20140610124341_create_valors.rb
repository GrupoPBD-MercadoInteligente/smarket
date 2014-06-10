class CreateValors < ActiveRecord::Migration
  def change
    create_table :valors do |t|
      t.belongs_to :valor, index: true
      t.belongs_to :propiedad, index: true
      t.belongs_to :producto, index: true
      t.string :valor_nombre

      t.timestamps
    end
  end
end
