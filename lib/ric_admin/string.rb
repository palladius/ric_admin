 
String.class_eval do
  def to_squawk
    "squawk! #{self}".strip
  end
  
  def qwe
    "worthless method called 'qwe' for '#{self}'"
  end
end

# should be the same as before
class ::String
  def to_squawk2
    "squawk! #{self}".strip
  end
end

# #this is wrong, acording to: http://guides.rubyonrails.org/plugins.html
#class String
#  
#end