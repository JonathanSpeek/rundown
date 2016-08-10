class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.datetime :date
      t.string :distance
      t.string :pace
      t.string :mood
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
