class ChangeTable < ActiveRecord::Migration
  change_table :instrumentos do |t|
    t.rename :cod, :instrumento_id
  end
end
