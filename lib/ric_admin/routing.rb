module RicAdmin #:nodoc:
  module Routing #:nodoc:
    module MapperExtensions
      def ric_admin
        @set.add_route("/ric_admin", {:controller => "ric_admin_controller", :action => "index"})
      end
    end
  end
end
 
ActionController::Routing::RouteSet::Mapper.send :include, RicAdmin::Routing::MapperExtensions
