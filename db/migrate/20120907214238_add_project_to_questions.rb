class AddProjectToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :project, :string
  end
end
