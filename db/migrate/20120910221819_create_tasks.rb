class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :type
      t.text :description
      t.text :breadcrumb
      t.boolean :complete
      t.string :size

      t.timestamps
    end
  end
end
