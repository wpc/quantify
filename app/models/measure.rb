class Measure < ActiveRecord::Base
  belongs_to :user
  has_many :values, :order => "at DESC"
  
  attr_accessible :name
  validates_uniqueness_of :name, :scope => :user_id
end
