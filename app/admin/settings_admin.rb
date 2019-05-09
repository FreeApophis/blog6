Trestle.resource(:settings) do
  menu do
    item :settings, icon: "fa fa-cogs", group: :site_configuration
  end

  table do
    column :key
    column :value
    column :tenant

    actions
  end

  form do |setting|
    text_field :key
    text_area :value
    select :tenant_id, Tenant.all
  end

  params do |params|
    params.require(:setting).permit(:key, :value, :tenant_id)
  end
end
