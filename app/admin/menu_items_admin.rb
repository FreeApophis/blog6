Trestle.resource(:menu_items) do
  menu do
    item :menu_items, icon: "fa fa-map-signs", group: :site_configuration
  end

  table do
    column :name
    column :path

    actions
  end

  form do |setting|
    text_field :name
    text_field :path
  end

  params do |params|
    params.require(:menu_item).permit(:name, :path)
  end
end
