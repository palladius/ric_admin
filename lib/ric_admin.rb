# RicAdmin Library. Keep this compact (only requires, NO CODE PLEASE)

#pyellow 'lib/ric_admin.rb: start'
require "ric_admin/core_ext"
require "ric_admin/array"
require "ric_admin/hash"
require 'ric_admin/acts_as_administrable'

class ::Object
  def ric_admin_test
    'This is a test method for any Object..'
  end
  def rat
    'Yet another test method for any Object..'
  end
end
