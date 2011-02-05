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
  
  def test_ric_admin_class_has_a_valid_version_like_1_0_0alpha
    #ver = RicAdminClass.version   # i.e. 0.1.2
    ppurple "(RicAdminClass.version: '''#{RicAdminClass.version}''')"
    assert_equal RicAdminClass.version.class, String
    assert_equal RicAdminClass.version.split('.').size, 3   # 3 fields
    assert_match /^\d+\.\d+\.\d+$/, RicAdminClass.version
  end
 
end

