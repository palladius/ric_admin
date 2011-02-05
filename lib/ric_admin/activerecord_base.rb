# TODO refactor into activerecord_base.rb
::ActiveRecord::Base.class_eval do 
  def self.idz
    find(:all).map{|record| record.id rescue '?!?' } rescue "SomeErr with AR::B.idz: '#{$!}'"
  end
end
