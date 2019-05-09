class PagesController < ApplicationController
  before_action :set_page, only: [:show]

  def index
    @pages = Page.all
  end

  def show
  end

  private
    def set_page
      @page = Page.find(params[:id])
    end
end
