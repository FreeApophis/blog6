Trestle.resource(:domains) do
  menu do
    item :domains, icon: "fa fa-star"
  end

  table do
    column :url
    actions
  end

  form do |domain|
    text_field :url
  end

  params do |params|
    params.require(:domain).permit(:url)
  end
end
