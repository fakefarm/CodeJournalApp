class Project < ActiveRecord::Base
  attr_accessible :about, :name

  has_many :questions
end
