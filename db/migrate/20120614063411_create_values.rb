class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.integer :feature_id, :null => false
      t.float :value, :null => false
      t.datetime :at, :null => false
    end
  end
end
