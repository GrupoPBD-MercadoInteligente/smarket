class ProductoNecesitado < ActiveRecord::Base
  self.table_name = 'producto_necesitado'
  self.primary_key = 'id'
  belongs_to :producto
  belongs_to :prod_nec
  belongs_to :usuario
end

