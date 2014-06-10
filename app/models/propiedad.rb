class Propiedad < ActiveRecord::Base
  self.table_name = 'propiedad'
  self.primary_key = 'id'
  belongs_to :propiedad
end

