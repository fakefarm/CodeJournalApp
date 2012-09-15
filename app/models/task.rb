class Task < ActiveRecord::Base
  attr_accessible :breadcrumb, :complete, :description, :size, :type_of_task,  :project_id, :user_id

  belongs_to :project
  belongs_to :user
end
