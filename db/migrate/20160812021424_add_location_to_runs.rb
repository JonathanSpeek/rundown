class AddLocationToRuns < ActiveRecord::Migration
  def change
    add_column :runs, :location, :string
  end
end
