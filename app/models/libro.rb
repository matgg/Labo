class Libro < ActiveRecord::Base
  attr_accessible :autor, :cod, :editorial, :nombre, :observaciones, :ubicacion
end
