class PrestamoLibro < ActiveRecord::Base
  attr_accessible :libro_id, :persona_id, :responsable_id
end
