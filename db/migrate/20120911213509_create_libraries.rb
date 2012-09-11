class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :resource_type
      t.string :current_status
      t.string :resource_topic
      t.string :resource_name

      t.timestamps
    end
  end
end
