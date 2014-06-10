class Auditorium < ActiveRecord::Base
  self.table_name = 'auditorium'
  self.primary_key = 'id'
  belongs_to :auditoria
end

