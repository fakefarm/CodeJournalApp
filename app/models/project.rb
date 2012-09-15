class Project < ActiveRecord::Base
  attr_accessible :about, :name, :url, :repo, :user_id

  has_many :questions
  has_many :tasks
  has_many :goals
end
