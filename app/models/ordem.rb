class Ordem < ActiveRecord::Base
  belongs_to :tecnico
  belongs_to :cliente
end
