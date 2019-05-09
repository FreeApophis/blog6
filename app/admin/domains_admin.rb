Trestle.resource(:domains) do
  menu do
    item :domains, icon: "fa fa-sitemap", group: :site_configuration
  end

  table do
    column :url
    column :tenant
    actions
  end

  form dialog: true do |domain|
    text_field :url
    select :tenant_id, Tenant.all
  end

  params do |params|
    params.require(:domain).permit(:url, :tenant_id)
  end
end
