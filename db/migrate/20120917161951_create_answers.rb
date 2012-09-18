class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body
      t.string :question_id
      t.string :title
      t.string :user_id

      t.timestamps
    end
  end
end
