class Propiedadclase < ActiveRecord::Base
  self.table_name = 'propiedadclase'
  self.primary_key = 'id'
  belongs_to :propiedad
  belongs_to :clase
end

