class EstProdOfNec < ActiveRecord::Base
  self.table_name = 'est_prod_of_nec'
  self.primary_key = 'id'
  belongs_to :estado_prod_of_necesidad
end

