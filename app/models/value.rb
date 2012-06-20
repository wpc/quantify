class Value < ActiveRecord::Base
  belongs_to :measure
  
  attr_accessible :value, :at
  validates_presence_of :value

  before_create :set_at

  protected

  def set_at
    self.at ||= Time.now.utc
  end
end
