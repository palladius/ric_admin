#require 'test_helper'
#
#class RicAdminTest < ActiveSupport::TestCase
#  # Replace this with your real tests.
#  test "the truth" do
#    assert true
#  end
#  
#  test "always wrong :)" do
#    assert_equal 42 , 43
#  end
#   
#end

# vendor/plugins/ric_admin/test/ric_admin_test.rb
 
require File.dirname(__FILE__) + '/test_helper'
 
class StringsTest < Test::Unit::TestCase

  def test_to_squawk_prepends_the_word_squawk
     assert_equal "squawk! Hello World", "Hello World".to_squawk
  end
  def test_qwe_is_created_for_string
     assert_equal "worthless method called 'qwe' for 'Hello World'", "Hello World".qwe
  end

  
end

