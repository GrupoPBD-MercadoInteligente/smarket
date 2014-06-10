class Usuario < ActiveRecord::Base
  self.table_name = 'usuario'
  self.primary_key = 'id'
  belongs_to :usuario
  belongs_to :comuna
end

