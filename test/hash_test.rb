require File.dirname(__FILE__) + '/test_helper'
 
 # I hope I can make humour in tests!
class LegalHashTest < Test::Unit::TestCase
  
  def test_a_hash_has_a_qwerty
    hash = {:foo => :bar}
    assert_equal hash.qwerty, 'also a hash has a qwerty!'
  end
  
end

