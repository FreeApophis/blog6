Trestle.resource(:wedding_groups) do
  menu do
    item :wedding_groups, icon: "fa fa-users", group: :wedding
  end

  table do
    column :name
    column :password
    actions
  end

  form do |comment|
    static_field :generated_password, Devise.friendly_token.first(6).upcase
    text_field :name
    text_field :password
  end


  params do |params|
    params.require(:wedding_group).permit(:name, :password)
  end
end
