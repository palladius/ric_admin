require "#{File.dirname(__FILE__)}/test_helper"
 
class RoutingTest < Test::Unit::TestCase
 
  #def setup
  #  ActionController::Routing::Routes.draw do |map|
  #    map.ric_admin
  #  end
  #end
  
  def test_ricadmin_route_TODO
    pred 'ROUTES To be Done'
  end
  
  # toBeAdded
  #def test_ricadmin_route
  #  assert_recognition :get, "/ric_admin", :controller => "ric_admin_controller", :action => "index"
  #end
 
  private
 
    def assert_recognition(method, path, options)
      result = ActionController::Routing::Routes.recognize_path(path, :method => method)
      assert_equal options, result
    end
end