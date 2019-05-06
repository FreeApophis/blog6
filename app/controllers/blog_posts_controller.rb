class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show]

  def index
    @blog_posts = BlogPost.by_tenant(current_tenant)
    @blog_posts = BlogPost.all
  end

  def show
  end

  private
    def set_blog_post
      @blog_post = BlogPost.friendly.find(params[:id])
    end
end
