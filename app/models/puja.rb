class Puja < ActiveRecord::Base
  self.table_name = 'puja'
  self.primary_key = 'id'
  belongs_to :puja
  belongs_to :sub
  belongs_to :usuario
end

