Trestle.resource(:tenants) do
  menu do
    item :tenants, icon: "fa fa-database", group: :site_configuration
  end

  table do
    column :name
    column :design_theme
    actions
  end

  form do |tenant|
    tab :tenant do
      text_field :name
      text_field :title
      text_field :tag_line
      select :design_theme_id, DesignTheme.all
    end

    tab :domains, badge: tenant.domains.size do
      table tenant.domains, admin: :domains do
        column :url, link: true
        actions
      end
    end
  end

  params do |params|
    params.require(:tenant).permit(:name, :title, :tag_line, :design_theme_id)
  end
end
