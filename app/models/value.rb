class Value < ActiveRecord::Base
  belongs_to :feature
  
  attr_accessible :value, :at
  validates_presence_of :value, :at
end
