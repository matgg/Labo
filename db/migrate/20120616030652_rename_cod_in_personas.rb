class RenameCodInPersonas < ActiveRecord::Migration
  def change
    change_table :personas do |t|
      t.rename :codigo, :persona_id
    end
  end

end
