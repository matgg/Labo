class Libro < ActiveRecord::Base
  attr_accessible :autor, :libro_id, :editorial, :nombre, :observaciones, :ubicacion
end
