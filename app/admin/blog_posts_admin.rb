Trestle.resource(:blog_posts) do
  menu do
    item :blog_posts, icon: "fa fa-rss-square"
  end

  table do
    column :title
    column :published_at, align: :center
    actions
  end

  form do |blog_post|
    text_field :title
    rich_text_area :content

    row do
      col(xs: 6) { datetime_field :published_at }
    end
  end

  params do |params|
    params.require(:blog_post).permit(:title, :content, :published_at)
  end
end
