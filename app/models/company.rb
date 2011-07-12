class Company < ActiveRecord::Base
  has_many :import_clients
  has_many :traces 
  has_many :clients, :through => :traces
end
