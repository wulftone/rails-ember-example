class Car < ActiveRecord::Base
  belongs_to :make
  attr_accessible :model_name, :year, :color, :engine, :make_id
end
