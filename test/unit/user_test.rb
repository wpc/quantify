require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "authenticate" do
    u = User.create(:name => 'foo', :email => "foo@bar.com", :password => 'abc123')
    assert_equal u, User.authenticate("foo@bar.com", 'abc123')
    assert !User.authenticate("bar@foo.com", 'abc123')
    assert !User.authenticate("foo@bar.com", 'abc')
    assert !User.authenticate("foo@bar.com", '')
  end

end
