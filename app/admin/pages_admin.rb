Trestle.resource(:pages) do
  menu do
    item :pages, icon: "fa fa-sticky-note"
  end

  table do
    column :title
    actions
  end

  form do |page|
    text_field :title
  end

  params do |params|
    params.require(:page).permit(:title)
  end
end
