class PagesController < ApplicationController
  before_action :set_page, only: [:show]

  def index
    @pages = Page.all
  end

  def show
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
