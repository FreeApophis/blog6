class ApplicationController < ActionController::Base
  add_flash_types :warning, :success

  include Pundit
  protect_from_forgery

  #before_action :authenticate_user!
  before_action :set_theme_view_path

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

  def set_theme_view_path
    prepend_view_path(Rails.root.join('themes', current_tenant.design_theme.name, 'views'))
  end

  helper_method :current_tenant
end
