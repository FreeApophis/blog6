Trestle.resource(:wedding_guests) do
  menu do
    item :wedding_guests, icon: "fa fa-glass", group: :wedding
  end

  table do
    column :name
    column :accepted
    column :user
    actions
  end

  form do |comment|
    text_field :name
    select :user_id, User.all
    check_box :accepted
  end


  params do |params|
    params.require(:wedding_guest).permit(:name, :accepted, :user_id)
  end
end
