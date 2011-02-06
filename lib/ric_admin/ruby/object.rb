
# Things to add to object

class ::Object
  def ric_admin_test
    'This is a test method for any Object..'
  end
  def rat
    'Yet another test method for any Object..'
  end
  
  def ricadmin_version
    RicAdminClass.version
  end
  
  def ric_admin_help
    puts <<-HELP 
    #Sorry innanzitutto for invading Object class :)
    1. Add to Gemfile 'ric' gem
    2. Install plugin: 
    
    Usage:
    - nothing yet (but its tested!)
    
    HELP
  end
  
  def ric_inspect
    { 
      :str     => self.to_s , 
      :methods => :TODO , 
      :inspect => self.inspect, 
      :class   => self.class 
    }
  end
  
end
