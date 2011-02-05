require File.dirname(__FILE__) + '/test_helper'

class Hickwall < ActiveRecord::Base
  acts_as_administrable
  acts_as_yaffle
end
 
class Wickwall < ActiveRecord::Base
  acts_as_administrable :yaffle_text_field => :last_tweet
  acts_as_yaffle :yaffle_text_field => :last_tweet
end
 
class ActsAsAdministrableTest < Test::Unit::TestCase
  load_schema
 
  def test_a_hickwalls_yaffle_text_field_should_be_last_squawk
    assert_equal "last_squawk", Hickwall.yaffle_text_field
  end
 
  def test_a_wickwalls_yaffle_text_field_should_be_last_tweet
    assert_equal "last_tweet", Wickwall.yaffle_text_field
  end
end