class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
module InheritedResources
  module BaseHelpers
    protected
    def build_resource
      get_resource_ivar || set_resource_ivar(end_of_association_chain.send(method_for_build, request.get? ? {} : resource_params))
    end

    def update_resource(object, attributes)
      object.update_attributes(attributes)
    end
  end
end
