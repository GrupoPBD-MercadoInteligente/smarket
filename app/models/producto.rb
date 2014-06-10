class Producto < ActiveRecord::Base
  self.table_name = 'producto'
  self.primary_key = 'id'
  belongs_to :producto
  belongs_to :clase
end

