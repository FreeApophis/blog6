require 'active_support/concern'

module Trestle
  module Auth
    module ControllerMethods

      extend ActiveSupport::Concern

      included do
        before_action :authenticate_user!
        before_action :require_admin!
      end

    protected
      def require_admin!
        if !current_user.is_admin
          redirect_to "/", alert: "You do not have access to the admin interface."
        end
      end

    end
  end
end

Trestle::ApplicationController.send(:include, Trestle::Auth::ControllerMethods)
