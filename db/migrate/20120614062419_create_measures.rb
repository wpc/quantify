class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.string :name, :null => false
      t.integer :user_id, :null => false
      t.timestamps
    end

    add_index :measures, [:user_id, :name], :unique => true
  end
end
