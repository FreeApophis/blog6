class PagesController < ApplicationController
  before_action :set_page, only: [:show]

  def index
    @pages = secure_scope
  end

  def show
    if !@page.tenants.include?(current_tenant)
      redirect_to :root, notice: @page.tenants.include?(current_tenant)
    end
  end

  private
    def set_page
      @page = Page.friendly.find(params[:id])
      authorize @page
    end

    def secure_scope
       policy_scope(Page).by_tenant(current_tenant)
    end
end
