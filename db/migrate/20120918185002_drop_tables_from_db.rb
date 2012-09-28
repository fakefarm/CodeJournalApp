class DropTablesFromDb < ActiveRecord::Migration
  def up
    drop_table :goals
    drop_table :tasks
  end

  def down
  end
end
