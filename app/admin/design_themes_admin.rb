Trestle.resource(:design_themes) do
  menu do
    item :design, icon: "fa fa-eye", group: :site_configuration
  end

  table do
    column :name
    actions
  end

  form dialog: true do |domain|
    text_field :name
  end

  params do |params|
    params.require(:design_theme).permit(:name)
  end
end
