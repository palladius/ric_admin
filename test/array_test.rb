
require File.dirname(__FILE__) + '/test_helper'
 
class ArrayTest < Test::Unit::TestCase
 
  def test_an_array_of_activerecords_responds_to_ids
    assert_respond_to [1,2,:foo, 'whatever'], :ids
  end

end

