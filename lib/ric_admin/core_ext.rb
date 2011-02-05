# vendor/plugins/yaffle/lib/ric_admin/core_ext.rb
 
String.class_eval do
  def to_squawk
    "squawk! #{self}".strip
  end
  
  def qwe
    "worthless method called 'qwe' for '#{self}'"
  end
end

# TODO refactor into activerecord_base.rb
::ActiveRecord::Base.class_eval do 
  def self.idz
    find(:all).map{|record| record.id rescue '?!?' } rescue "SomeErr with AR::B.idz: '#{$!}'"
  end
end


#
#class String
#  def to_squawk
#    "squawk! #{self}".strip
#  end
#end