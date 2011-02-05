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
 
class RicAdminTest < Test::Unit::TestCase
  load_schema
 
  class Hickwall < ActiveRecord::Base
  end
 
  class Wickwall < ActiveRecord::Base
  end
 
  def test_schema_has_loaded_correctly
    assert_equal [], Hickwall.all
    assert_equal [], Wickwall.all
  end
  
  def test_to_squawk_prepends_the_word_squawk
     assert_equal "squawk! Hello World", "Hello World".to_squawk
  end
  def test_qwe_is_created_for_string
     assert_equal "worthless method called 'qwe' for 'Hello World'", "Hello World".qwe
  end
  
  def test_a_hash_has_a_qwerty
    hash = {:foo => :bar}
    assert_equal hash.qwerty, 'also a hash has a qwerty!'
  end
  
  def test_ricadmin_has_a_nice_version
    ver = RicAdmin.version   # i.e. 0.1.2
    assert_equal ver.class, String
    assert_equal ver.split('.'), 3   # 3 fields
  end
 
end

