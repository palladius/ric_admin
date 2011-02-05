# TODO refactor into activerecord_base.rb
::ActiveRecord::Base.class_eval do 
  def self.idz
    find(:all).map{|record| record.id rescue '?!?' } rescue "SomeErr with AR::B.idz: '#{$!}'"
  end
  
  # test function
  def self.invalidz
    find(:all).select{|record| ! record.valid? rescue "Err(#{$!})" }
  end
  
  def idnamez
    find(:all).map{|r| [r.id,r.to_s] }
  end
end
