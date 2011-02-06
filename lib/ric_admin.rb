# RicAdmin Library. Keep this compact (only requires, NO CODE PLEASE)

### GEMS I need (todo find a file with requirements..)
#require 'rubygems'  # for GEMs, for colors
#require 'ric'       # GEM, for colors

require "ric_admin/ric_admin" # class stuff to keep this clean

require 'ric_admin/acts_as_administrable'
#require "ric_admin/routing"
require "ric_admin/ruby/array"
require "ric_admin/ruby/hash"
require "ric_admin/ruby/object"
require "ric_admin/ruby/string"

# helpers and views??
# bug, seems u have to install: gem install 'rcov'
%w{ models }.each do |dir|
  path = File.join(File.dirname(__FILE__), 'app', dir)
  puts "Adding Path: #{purple path }"
  $LOAD_PATH << path
  #debugger
  #config.load_paths << "#{RAILS_ROOT}/app/widgets"
  #ActiveSupport::Dependencies.load_paths << path         
  #ActiveSupport::Dependencies.load_once_paths.delete(path)
end

