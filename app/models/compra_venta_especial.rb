class CompraVentaEspecial < ActiveRecord::Base
  self.table_name = 'compra_venta_especial'
  self.primary_key = 'id'
  belongs_to :tipo_trans
  belongs_to :compraventa
  belongs_to :usuario
  belongs_to :prod_of_nec
  belongs_to :usu_usuario
end

