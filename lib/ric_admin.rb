# RicAdmin Library. Keep this compact (only requires, NO CODE PLEASE)

### GEMS
#require 'rubygems'  # for GEMs, for colors
#require 'ric'       # GEM, for colors

class RicAdminClass
  def self.version   #{}"42.0.42test\n"
    File.read(File.dirname(__FILE__) + '/../VERSION') rescue "UnknownVersion! (#{$!})"
  end 
end
# TODO refactor me in better place :)
$ric_admin_conf = {
  :ver => RicAdminClass.version #{ }"#{File.read(File.dirname(__FILE__)+'/VERSION') rescue 'UnknVer'}"
}

pyellow '[pyellow works!] lib/ric_admin.rb: start' rescue "pyellow err.."
require 'ric_admin/acts_as_administrable'
require "ric_admin/array"
require "ric_admin/hash"
require "ric_admin/ric_admin"
require "ric_admin/string"



class ::Object
  def ric_admin_test
    'This is a test method for any Object..'
  end
  def rat
    'Yet another test method for any Object..'
  end
  
  def ricadmin_version
    RicAdminClass.version
  end
  
  def ric_admin_help
    puts <<-HELP 
    #Sorry innanzitutto for invading Object class :)
    1. Add to Gemfile 'ric' gem
    2. Install plugin: 
    
    Usage:
    - nothing yet (but its tested!)
    
    HELP
  end
  
end
