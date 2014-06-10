class CreatePujas < ActiveRecord::Migration
  def change
    create_table :pujas do |t|
      t.belongs_to :puja, index: true
      t.belongs_to :sub, index: true
      t.belongs_to :usuario, index: true
      t.integer :puja_valor
      t.integer :puja_correlativo

      t.timestamps
    end
  end
end
