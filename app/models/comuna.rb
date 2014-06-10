class Comuna < ActiveRecord::Base
  self.table_name = 'comuna'
  self.primary_key = 'id'
  belongs_to :comuna
  belongs_to :provincia
end

