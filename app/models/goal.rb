class Goal < ActiveRecord::Base
  attr_accessible :completed, :project_id, :goals

  belongs_to :project
end
