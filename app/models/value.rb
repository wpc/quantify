class Value < ActiveRecord::Base
  belongs_to :feature
  
  attr_accessible :value, :at
end
