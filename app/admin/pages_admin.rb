Trestle.resource(:pages) do
  menu do
    item :pages, icon: "fa fa-sticky-note", group: :content
  end

  table do
    column :title, link: true
    column :tenants, format: :tags do |blog_post|
      blog_post.tenants.map(&:name)
    end
    actions
  end

  form do |page|
    text_field :title
    rich_text_area :content
    check_box :comments_allowed
    collection_check_boxes :tenant_ids, Tenant.all, :id, :name, { label: "Tenant(s)" }
  end

  params do |params|
    params.require(:page).permit(:title, :content, :comments_allowed, :tenant_ids => [])
  end
end
