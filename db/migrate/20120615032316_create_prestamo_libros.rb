class CreatePrestamoLibros < ActiveRecord::Migration
  def change
    create_table :prestamo_libros do |t|
      t.integer :persona_codigo
      t.integer :libro_codigo
      t.integer :responsable_codigo

      t.timestamps
    end
  end
end
