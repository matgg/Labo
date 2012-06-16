class RenamepersonaCodigoInPrestamoLibro < ActiveRecord::Migration
  def change
  change_table :prestamo_libros do |t|
    t.rename :persona_codigo, :persona_id
    t.rename :libro_codigo, :instrumento_id
    t.rename :responsable_codigo, :responsable_id
  end
end
end
