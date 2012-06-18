class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.integer :measure_id, :null => false
      t.float :value, :null => false
      t.datetime :at, :null => false
    end
  end
end
