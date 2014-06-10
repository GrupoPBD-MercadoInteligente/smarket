class ProvinciaUnit < ActiveRecord::Base
  self.table_name = 'provincia_unit'
  self.primary_key = 'id'
  belongs_to :provincia
  belongs_to :region
end

