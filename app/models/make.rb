class Make < ActiveRecord::Base
  attr_accessible :name, :website
  has_many :cars

  with_options :presence => true do |make|
    make.validates :name
    make.validates :website
  end

end
