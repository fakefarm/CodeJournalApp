class Answer < ActiveRecord::Base
  attr_accessible :body, :question_id, :title, :user_id

  belongs_to :questions
  belongs_to :user
end
