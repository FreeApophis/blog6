class RootController < ApplicationController
  def show
    root_page_setting = Setting.where(tenant: current_tenant).where(key: "root_page").first
    if root_page_setting
      render_page root_page_setting.value
    else
      render_blog_index
    end   
  end
private
  def render_page root_page
      @page = Page.friendly.find(root_page)

      flash[:notice] = "Root page: #{root_page}"
      render template: 'pages/show'
  end

  def render_blog_index
      @blog_posts = policy_scope(BlogPost).by_tenant(current_tenant)

      flash[:notice] = "Root page: Blog"
      render template: 'blog_posts/index'
  end
end
