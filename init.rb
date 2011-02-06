# Include hook code here

require 'ric_admin' # local in lib/ric_admin.rb , to keep this clean

begin
  pyellow "[ric_admin] init.rb: Loading ric_admin plugin v#{RicAdminClass.version}"
  puts Rails::Plugin::Dependencies rescue "Rails::Plugin::DependenciesERR: #{$!}"
rescue Exception => e
  puts    "[ric_admin v#{$ric_admin_conf[:ver]}] init.rb: ERR_YELLOW Loading ric_admin plugin"  
end
