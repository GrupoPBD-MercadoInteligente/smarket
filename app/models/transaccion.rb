class Transaccion < ActiveRecord::Base
  self.table_name = 'transaccion'
  self.primary_key = 'id'
  belongs_to :transaccion
  belongs_to :tipo_trans
end

