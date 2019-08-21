Trestle.resource(:wedding_guests) do
  menu do
    item :wedding_guests, icon: "fa fa-glass", group: :wedding
  end

  scope :all, default: true
  scope :children
  scope :adults

  table do
    column :name
    column :accepted
    column :is_child
    column :wedding_group
    actions
  end

  form do |comment|
    text_field :name
    select :wedding_group_id, WeddingGroup.all
    check_box :accepted
    check_box :is_child
  end

  params do |params|
    params.require(:wedding_guest).permit(:name, :wedding_group_id, :accepted, :is_child)
  end
end
