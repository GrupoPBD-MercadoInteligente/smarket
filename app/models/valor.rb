class Valor < ActiveRecord::Base
  self.table_name = 'valor'
  self.primary_key = 'id'
  belongs_to :valor
  belongs_to :propiedad
  belongs_to :producto
end

