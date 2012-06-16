class Instrumento < ActiveRecord::Base
  attr_accessible :instrumento_id, :detalles, :marca, :nombre, :nro_serie, :observaciones,
                  :relacionados

  validates :instrumento_id, presence: true, uniqueness: true, length: {maximum: 4, minimum:4} ,
            numericality: {only_integer: true}
  validates :nombre, presence: true, length: { maximum: 255 }
  validates :marca, length: { maximum: 255 }
  validates :nro_serie, length: { maximum: 255 }


end
