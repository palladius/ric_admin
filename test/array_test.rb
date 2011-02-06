
require File.dirname(__FILE__) + '/test_helper'
 
class ArrayTest < Test::Unit::TestCase
 
  def test_an_array_of_activerecords_responds_to_ids
    assert_respond_to [1,2,:foo, 'whatever'], :ids
  end
  
  def test_an_array_is_visualized_in_a_nice_way
    assert_equal [1,2,:foo, 'ciao'].to_s, "[ 1, 2, foo, ciao ]"
  end

end

