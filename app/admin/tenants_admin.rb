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
  end

  params do |params|
    params.require(:tenant).permit(:name)
  end
end
