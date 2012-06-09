class Instrumento < ActiveRecord::Base
  attr_accessible :cod, :detalles, :marca, :nombre, :nro_serie, :observaciones,
                  :relacionados
  validates :cod, presence: true, uniqueness: true, length: {maximum: 4, minimum:4} ,
            numericality: {only_integer: true}
  validates :nombre, presence: true, length: { maximum: 255 }
  validates :marca, length: { maximum: 255 }
  validates :nro_serie, length: { maximum: 255 }
end
