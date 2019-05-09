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

    collection_check_boxes :tenant_ids, Tenant.all, :id, :name, { label: "Tenant(s)" }
  end

  params do |params|
    params.require(:page).permit(:title, :content, :tenant_ids => [])
  end
end
