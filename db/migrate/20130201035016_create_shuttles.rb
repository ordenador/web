class CreateShuttles < ActiveRecord::Migration
  def change
    create_table :shuttles do |t|
      t.string :model
      t.string :color
      t.integer :funding

      t.timestamps
    end
  end
end
