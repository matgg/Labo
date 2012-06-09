class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.integer :cod
      t.string :nombre
      t.string :autor
      t.string :editorial
      t.string :ubicacion
      t.text :observaciones

      t.timestamps
    end
  end
end
