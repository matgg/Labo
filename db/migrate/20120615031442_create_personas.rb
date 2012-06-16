class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.integer :codigo
      t.string :apellido
      t.string :nombre
      t.string :dni
      t.integer :legajo
      t.date :nacimiento
      t.string :email
      t.string :direccion
      t.integer :telefono
      t.integer :celular
      t.text :observacion

      t.timestamps
    end
  end
end
