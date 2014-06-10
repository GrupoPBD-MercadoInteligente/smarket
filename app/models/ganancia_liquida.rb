class GananciaLiquida < ActiveRecord::Base
  self.table_name = 'ganancia_liquida'
  self.primary_key = 'id'
  belongs_to :ganancia_liquida
  belongs_to :transaccion
end

