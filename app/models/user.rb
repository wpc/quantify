class User < ActiveRecord::Base
  has_many :measures
  
  has_secure_password
  attr_accessible :email, :name, :password, :password_confirmation
  validates_presence_of :email, :name
  validates_uniqueness_of :email, :name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  
  def self.authenticate(email, password)
    find_by_email(email).try(:authenticate, password)
  end
end
