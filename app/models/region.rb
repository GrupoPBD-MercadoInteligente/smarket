class Region < ActiveRecord::Base
  self.table_name = 'region'
  self.primary_key = 'id'
  belongs_to :region
end

