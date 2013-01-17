class Speaker < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :bio

  module Scopes
    def in_random_order
      with_exclusive_scope{ order('RANDOM()') }
    end
  end
  extend Scopes
end
