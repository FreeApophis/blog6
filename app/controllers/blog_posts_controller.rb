class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show]

  def index
    @blog_posts  = secure_scope
  end

  def show
  end

  private
    def set_blog_post
      @blog_post = BlogPost.friendly.find(params[:id])
      authorize @blog_post
    end

    def secure_scope
       policy_scope(BlogPost).by_tenant(current_tenant)
    end
end
