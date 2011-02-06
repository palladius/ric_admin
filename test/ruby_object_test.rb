
class RubyObjectTest < Test::Unit::TestCase

  def test_an_object_responds_to_ric_inspect
     assert_respond_to [1,2,:foo, 'whatever'], :ric_inspect
     assert_respond_to {:another => :object }, :ric_inspect
     #assert_equal "squawk! Hello World", "Hello World".to_squawk
  end

end

