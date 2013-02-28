class Make < ActiveRecord::Base
  attr_accessible :name, :website
  has_many :cars
end
