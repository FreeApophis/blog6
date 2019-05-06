class CommentsController < ApplicationController
  def create
    @commentable = load_commentable

    @comment = Comment.new(comment_params.merge(user: current_user, commentable: @commentable))

    if @comment.save
      @commentable.touch
    end

    redirect_to @commentable
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end

  def load_commentable
    if params[:blog_post_id]
      return BlogPost.friendly.find(params[:blog_post_id])
    end
    raise 'not commentable'
  end
end

