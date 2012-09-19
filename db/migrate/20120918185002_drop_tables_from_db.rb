class DropTablesFromDb < ActiveRecord::Migration
  def up
    drop_table :goals
    drop_table :tasks
    drop_table :libraries
  end

  def down
  end
end
