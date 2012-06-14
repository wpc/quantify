class Feature < ActiveRecord::Base
  belongs_to :user
  has_many :values
  
  attr_accessible :name
  validates_uniqueness_of :name, :scope => :user_id
end
