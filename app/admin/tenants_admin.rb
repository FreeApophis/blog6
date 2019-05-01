Trestle.resource(:tenants) do
  menu do
    item :tenants, icon: "fa fa-database"
  end

  table do
    column :name
    actions
  end

  form do |tenant|
    text_field :name

    tab :domains, badge: tenant.domains.size do
      table tenant.domains, admin: :domains do
        column :url, link: true
        actions
      end
    end
  end

  params do |params|
    params.require(:tenant).permit(:name)
  end
end
