# Always taken by: http://guides.rubyonrails.org/plugins.html

module RicAdmin
    
  def self.included(base)
    base.send :extend, ClassMethods
  end
 
  module ClassMethods
    
    # any method placed here will apply to classes, like Hickwall
    
    # TODO remove me and use the proper administrable one :)
    def acts_as_yaffle(options = {})
      cattr_accessor :yaffle_text_field
      self.yaffle_text_field = (options[:yaffle_text_field] || :last_squawk).to_s
    end

    def acts_as_administrable(opts={})
      cattr_accessor :yaffle_text_field
      self.yaffle_text_field = (opts[:yaffle_text_field] || :last_squawk).to_s
      send :include, InstanceMethods
      # I would like to send some hook so that every model who obeys 'administrable' gets into the admin page :)
    end
    
  end
 
  module InstanceMethods
    # any method placed here will apply to instances, like @hickwall
    def boh
      'boh! (Just testing the InstanceMethods of RicAdmin)'
    end
  end
  
end

ActiveRecord::Base.send :include, RicAdmin