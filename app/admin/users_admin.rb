Trestle.resource(:users) do
  menu do
    item :users, icon: "fa fa-users", group: :site_configuration
  end

  table do
    column :email
    column :created_at, align: :center
    actions
  end

  form do |comment|
  end


  params do |params|
    params.require(:user).permit()
  end
end
