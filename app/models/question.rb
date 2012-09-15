class Question < ActiveRecord::Base
  attr_accessible :question, :size, :topic, :visibility, :project_id, :user_id

  belongs_to :project
  belongs_to :user

end
