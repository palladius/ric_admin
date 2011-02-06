class RicAdminClass
  def self.version   #{}"42.0.42test\n"
    File.read(File.dirname(__FILE__) + '/../../VERSION') rescue "UnknownVersion! (#{$!})"
  end 
end

$ric_admin_conf = {  :ver => RicAdminClass.version } # TODO refactor me in better place :)

#pyellow '[ric_admin] lib/ric_admin.rb: start'
