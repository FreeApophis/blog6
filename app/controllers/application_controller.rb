class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def current_tenant
    domain = Domain.find_by url: request.host
    if domain && domain.tenant
      domain.tenant
    end
  end

  helper_method :current_tenant
end
