Trestle.resource(:tags) do
  menu do
    item :tags, icon: "fa fa-tags", group: :content
  end

  table do
    column :name
    actions
  end

  form do |tag|
    tab :tag do
      text_field :name
        column :url, link: true
        actions
    end

    tab :tagged do
    end


    text_field :name
  end

  params do |params|
    params.require(:tag).permit(:name)
  end
end
