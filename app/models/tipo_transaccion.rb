class TipoTransaccion < ActiveRecord::Base
  self.table_name = 'tipo_transaccion'
  self.primary_key = 'id'
  belongs_to :tipo_trans
end

