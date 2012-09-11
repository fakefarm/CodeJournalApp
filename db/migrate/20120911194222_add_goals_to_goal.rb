class AddGoalsToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :goals, :string
  end
end
