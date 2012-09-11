class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.boolean :completed
      t.integer :project_id

      t.timestamps
    end
  end
end
