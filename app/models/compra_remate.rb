class CompraRemate < ActiveRecord::Base
  self.table_name = 'compra_remate'
  self.primary_key = 'id'
  belongs_to :tipo_trans
  belongs_to :comprasubasta
  belongs_to :usuario
  belongs_to :prod_sub
  belongs_to :usu_usuario
end

