class Remate < ActiveRecord::Base
  self.table_name = 'remate'
  self.primary_key = 'id'
  belongs_to :sub
  belongs_to :estado_subasta
  belongs_to :usuario
  belongs_to :prod_sub
end

