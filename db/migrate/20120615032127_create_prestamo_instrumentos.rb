class CreatePrestamoInstrumentos < ActiveRecord::Migration
  def change
    create_table :prestamo_instrumentos do |t|
      t.integer :persona_codigo
      t.integer :instrumento_codigo
      t.integer :responsable_codigo

      t.timestamps
    end
  end
end
