class ApplicationController < ActionController::Base
  add_flash_types :warning, :success

  include Pundit
  protect_from_forgery

  #before_action :authenticate_user!

  layout :get_layout

  def current_tenant
    domain = Domain.find_by url: request.host
    if domain && domain.tenant
      domain.tenant
    end
  end

  def get_layout
    'application'
  end

  helper_method :current_tenant
end
