Trestle.resource(:blog_posts) do
  menu do
    item :blog_posts, icon: "fa fa-rss-square", group: :content
  end

  scope :all, default: true
  scope :published
  scope :drafts, -> { BlogPost.unpublished }

  table do
    column :title, link: true
    column :author
    column :published, align: :center do |blog_post|
      status_tag(icon('fa fa-check'), :success) if blog_post.published?
    end
    column :published_at, align: :left
    actions
  end

  form dialog: true do |blog_post|
    text_field :title
    rich_text_area :content

    row do
      col(xs: 6) { datetime_field :published_at }
    end
  end

  params do |params|
    params
      .require(:blog_post)
      .permit(:title, :content, :published_at)
      .merge({author: current_user})
  end
end
