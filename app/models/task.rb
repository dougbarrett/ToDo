class Task < ActiveRecord::Base
  attr_accessible :name, :finished
  validates_presence_of :name
end
