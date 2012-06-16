class RenameCodInLibros < ActiveRecord::Migration
  def change
       change_table :libros do |t|
         t.rename :cod, :libro_id
       end
  end



end
