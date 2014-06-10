class ProdOfNec < ActiveRecord::Base
  self.table_name = 'prod_of_nec'
  self.primary_key = 'id'
  belongs_to :producto
  belongs_to :prod_of_nec
  belongs_to :usuario
  belongs_to :estado_prod_of_necesidad
  belongs_to :prod_nec
end

