# RicAdmin Library. Keep this compact (only requires, NO CODE PLEASE)

### GEMS
#require 'rubygems'  # for GEMs, for colors
#require 'ric'       # GEM, for colors

pyellow '[pyellow works!] lib/ric_admin.rb: start' rescue "pyellow"
#require "ric_admin/core_ext"
require 'ric_admin/acts_as_administrable'
require "ric_admin/array"
require "ric_admin/hash"
require "ric_admin/string"

class ::Object
  def ric_admin_test
    'This is a test method for any Object..'
  end
  def rat
    'Yet another test method for any Object..'
  end
end
