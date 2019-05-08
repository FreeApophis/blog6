require 'active_support/concern'

module Trestle
  module Auth
    module ControllerMethods

      extend ActiveSupport::Concern

      included do
        before_action :authenticate_user!
        before_action :require_admin!
      end

      def require_admin!
      #  redirect_to "/", alert: "Only the president is authorized to access this area"
      end

    end
  end
end

Trestle::ApplicationController.send(:include, Trestle::Auth::ControllerMethods)
