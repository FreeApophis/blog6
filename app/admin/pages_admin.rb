Trestle.resource(:pages) do
  menu do
    item :pages, icon: "fa fa-sticky-note", group: :content
  end

  table do
    column :title, link: true
    actions
  end

  form do |page|
    text_field :title
  end

  params do |params|
    params.require(:page).permit(:title)
  end
end
