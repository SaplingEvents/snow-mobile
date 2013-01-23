class Talk < ActiveRecord::Base
  attr_accessible :description, :plenary, :speaker, :start, :title

  validates_presence_of :title, :start
end