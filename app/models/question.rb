class Question < ActiveRecord::Base
  attr_accessible :question, :size, :topic, :visibility, :project_id

  belongs_to :project
end
