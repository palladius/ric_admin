# Include hook code here

require 'ric_admin' # local in lib/ric_admin.rb , to keep this clean

# TODO dry version!
puts "Riccardo plugin hook conf = v.#{$ric_admin_conf}, yay!"
begin
  pyellow "[ric_admin v#{$ric_admin_conf[:ver]}] init.rb: Loading ric_admin plugin"
rescue Exception => e
  puts    "[ric_admin v#{$ric_admin_conf[:ver]}] init.rb: ERR_YELLOW Loading ric_admin plugin"  
end
