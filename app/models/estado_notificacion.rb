class EstadoNotificacion < ActiveRecord::Base
  self.table_name = 'estado_notificacion'
  self.primary_key = 'id'
  belongs_to :estado_not
end

