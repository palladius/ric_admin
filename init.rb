# Include hook code here

require 'ric_admin' # local in lib/ric_admin.rb , to keep this clean


# TODO refactor me in better place :)
$ric_admin_conf = {
  :ver => "#{File.read(File.dirname(__FILE__)+'/VERSION') rescue 'UnknVer'}"
}

# TODO dry version!
puts "Riccardo plugin hook conf = v.#{$ric_admin_conf}, yay!"
begin
  pyellow "\n\t[ric_admin] Loading ric_admin plugin v#{$ric_admin_conf[:ver] rescue 'ErrVer1' }" 
rescue Exception => e
  puts    "\n\t[ric_admin] ERR_YELLOW Loading ric_admin plugin v#{$ric_admin_conf[:ver] rescue 'ErrVer2' }"  
end
