class Persona < ActiveRecord::Base

  attr_accessible :apellido, :celular, :persona_id, :direccion, :dni, :email, :legajo, :nacimiento, :nombre, :observacion, :telefono

  has_many :prestamo_instrumentos

end
