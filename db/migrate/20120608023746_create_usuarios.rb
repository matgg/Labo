class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :cod
      t.string :nombre
      t.string :apellido
      t.string :dni
      t.integer :legajo
      t.date :nacim
      t.string :mail
      t.string :direccion
      t.integer :telefon
      t.integer :celular
      t.text :observacion

      t.timestamps
    end
  end
end
