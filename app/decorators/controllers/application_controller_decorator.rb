module Controllers
  module ApplicationControllerDecorator
    def self.prepended(base)
      base.class_eval do
        helper Forem::Engine.helpers
      end
    end
  end
end

ApplicationController.prepend(Controllers::ApplicationControllerDecorator)

# ApplicationController.class_eval do
#   helper Forem::Engine.helpers
# end
