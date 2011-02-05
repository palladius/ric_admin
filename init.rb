# Include hook code here

#require 'ric'       # for colors
require 'ric_admin' # to keep this clean

$ric_admin_conf = {
  :ver => '0.1'
}

Hash.class_eval do
  def is_a_special_hash?
    true
  end
end

class ::Array
  def names
    map{|x| x.name}
  end
end

class ::Hash
  def qwerty
    'also a hash has a qwerty!'
  end
end

puts "\n\tLoading ric_admin plugin v#{$ric_admin_conf[:ver]}"