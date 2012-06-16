class PrestamoInstrumento < ActiveRecord::Base

  attr_accessible :instrumento_id, :persona_id, :responsable_id

  belongs_to :persona
end
