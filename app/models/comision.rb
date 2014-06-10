class Comision < ActiveRecord::Base
  self.table_name = 'comision'
  self.primary_key = 'id'
  belongs_to :comision
  belongs_to :transaccion
end

