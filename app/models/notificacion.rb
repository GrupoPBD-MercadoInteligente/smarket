class Notificacion < ActiveRecord::Base
  self.table_name = 'notificacion'
  self.primary_key = 'id'
  belongs_to :notificacion
  belongs_to :usuario
  belongs_to :estado_not
end

