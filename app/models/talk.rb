class Talk < ActiveRecord::Base
  attr_accessible :description, :plenary, :speaker, :start, :title
end
