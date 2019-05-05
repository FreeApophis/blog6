Trestle.resource(:comments) do
  menu do
    item :comments, icon: "fa fa-comments", group: :content, badge: Comment.count
  end

  table do
    column :text
    column :created_at, align: :center
    actions
  end

  form do |comment|
    text_area :text
  end

  params do |params|
    params.require(:comment).permit(:text)
  end
end
