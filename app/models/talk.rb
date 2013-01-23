class Talk < ActiveRecord::Base
  attr_accessible :description, :plenary, :speaker, :start, :title

  validates_presence_of :title, :start

  module Scopes
    def on_friday
      where('start >= ?', Time.local('2013', 'feb', '15'))
        .where('start <= ?', Time.local('2013', 'feb', '16'))
    end

    def on_saturday
      where('start >= ?', Time.local('2013', 'feb', '16'))
        .where('start <= ?', Time.local('2013', 'feb', '17'))
    end
  end
  extend Scopes
end
