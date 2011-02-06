require File.dirname(__FILE__) + '/test_helper'
 
class FacebookUserTest < Test::Unit::TestCase
  load_schema
 
  def test_facebook_user
    assert_kind_of FacebookUser, FacebookUser.new
  end
  
end