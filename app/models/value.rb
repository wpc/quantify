class Value < ActiveRecord::Base
  belongs_to :measure
  
  attr_accessible :value, :at
  validates_presence_of :value, :at
end
