class Project < ActiveRecord::Base
  attr_accessible :about, :name, :url

  has_many :questions
  has_many :tasks
  has_many :goals
end
