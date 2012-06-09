class Usuario < ActiveRecord::Base
  attr_accessible :apellido, :celular, :cod, :direccion, :dni, :legajo, :mail, :nacim,
                  :nombre, :observacion, :telefon
  validates :cod, presence: true, uniqueness: true, length: {maximum:5, minimum:5} ,
            numericality: {only_integer: true}
  validates :nombre, presence: true, length: { maximum: 255 }
  validates :apellido, presence: true, length: { maximum: 255 }
  validates :dni, presence: true, length: {maximum: 8, minimum:8}



end
