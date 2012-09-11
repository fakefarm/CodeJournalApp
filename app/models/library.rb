class Library < ActiveRecord::Base
  attr_accessible :current_status, :resource_name, :resource_topic, :resource_type
end
