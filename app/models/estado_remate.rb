class EstadoRemate < ActiveRecord::Base
  self.table_name = 'estado_remate'
  self.primary_key = 'id'
  belongs_to :estado_subasta
end

