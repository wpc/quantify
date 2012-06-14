class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name, :null => false
      t.integer :user_id, :null => false
      t.timestamps
    end

    add_index :features, [:user_id, :name], :unique => true
  end
end
