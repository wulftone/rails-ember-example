class Car < ActiveRecord::Base
  belongs_to :make
  belongs_to :color
  belongs_to :engine
  attr_accessible :model, :year
end
