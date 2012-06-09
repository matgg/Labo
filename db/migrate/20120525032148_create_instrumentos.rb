class CreateInstrumentos < ActiveRecord::Migration
  def change
    create_table :instrumentos do |t|
      t.integer :cod
      t.string :nombre
      t.string :marca
      t.string :nro_serie
      t.text :observaciones
      t.text :detalles
      t.text :relacionados

      t.timestamps
    end
  end
end
