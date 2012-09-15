class Goal < ActiveRecord::Base
  attr_accessible :completed, :project_id, :goals, :user_id

  belongs_to :project
  belongs_to :user
end
