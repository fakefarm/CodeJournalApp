class Task < ActiveRecord::Base
  attr_accessible :breadcrumb, :complete, :description, :size, :type_of_task,  :project_id

  belongs_to :project
end
