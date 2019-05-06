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
    column :tenants, format: :tags do |blog_post|
      blog_post.tenants.map(&:name)
    end
    column :published, align: :center do |blog_post|
      status_tag(icon('fa fa-check'), :success) if blog_post.published?
    end
    column :published_at, align: :left
    actions
  end

  form dialog: false do |blog_post|
    tab :post do
      text_field :title
      rich_text_area :content

      row do
        col(xs: 6) { datetime_field :published_at }
      end

       sidebar do
         select :author_id, User.all
         collection_check_boxes :tenant_ids, Tenant.all, :id, :name, { label: "Tenant(s)" }
       end
    end
    tab :comments  do
      "Something something dark side"
    end
  end

  params do |params|
    params.require(:blog_post).permit(:title, :content, :author_id, :published_at, :tenant_ids => [])
  end
end
