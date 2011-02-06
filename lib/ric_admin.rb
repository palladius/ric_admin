# RicAdmin Library. Keep this compact (only requires, NO CODE PLEASE)

### GEMS I need (todo find a file with requirements..)
#require 'rubygems'  # for GEMs, for colors
#require 'ric'       # GEM, for colors

class RicAdminClass
  def self.version   #{}"42.0.42test\n"
    File.read(File.dirname(__FILE__) + '/../VERSION') rescue "UnknownVersion! (#{$!})"
  end 
end
# TODO refactor me in better place :)
$ric_admin_conf = {
  :ver => RicAdminClass.version
}

pyellow '[ric_admin] lib/ric_admin.rb: start'
require 'ric_admin/acts_as_administrable'
#require "ric_admin/ric_admin"   # whats it for?!?
require "ric_admin/ruby/array"
require "ric_admin/ruby/hash"
require "ric_admin/ruby/object"
require "ric_admin/ruby/string"

# helpers and views??
# bug, seems u have to install: gem install 'rcov'
#%w{ models }.each do |dir|
#  path = File.join(File.dirname(__FILE__), 'app', dir)
#  $LOAD_PATH << path
#  puts "Path is: #{purple path }"
#  ActiveSupport::Dependencies.load_paths << path
#  ActiveSupport::Dependencies.load_once_paths.delete(path)
#end

