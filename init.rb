# Include hook code here

require 'ric'       # for colors
require 'ric_admin' # to keep this clean

$ric_admin_conf = {
  :ver => '0.0.3'
}



# TODO dry version!
begin
  pyellow "\n\tLoading ric_admin plugin v#{$ric_admin_conf[:ver] rescue 'ErrVerr' }" 
rescue Exception => e
  puts    "\n\tERR_YELLOW Loading ric_admin plugin v#{$ric_admin_conf[:ver] rescue 'ErrVerr' }"  
end