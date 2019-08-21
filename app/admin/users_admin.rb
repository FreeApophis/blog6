Trestle.resource(:users) do
  menu do
    item :users, icon: "fa fa-users", group: :site_configuration
  end

  table do
    column :email
    column :is_admin
    column :created_at, align: :center
    actions
  end

  form do |comment|
    text_field :email
    password_field :password
    password_field :password_confirmation
    check_box :is_admin
  end


  params do |params|
    params.require(:user).permit(:email, :is_admin, :password, :password_confirmation)
  end
end
