class Car < ActiveRecord::Base
  belongs_to :make
  attr_accessible :model_name, :year, :color, :engine, :make_id

  with_options :presence => true do |car|
    car.validates :model_name
    car.validates :year
    car.validates :color
    car.validates :engine
  end

  validates :year,
    numericality: {
      only_integer: true,
      greater_than: 1850
    }

end
