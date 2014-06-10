class Condicion < ActiveRecord::Base
  self.table_name = 'condicion'
  self.primary_key = 'id'
  belongs_to :condicion
  belongs_to :tipo_trans
end

