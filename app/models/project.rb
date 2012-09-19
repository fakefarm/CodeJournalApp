class Project < ActiveRecord::Base
  attr_accessible :about, :name, :url, :repo, :user_id, :project_type

  has_many :questions
end
