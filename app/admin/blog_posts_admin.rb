Trestle.resource(:blog_posts) do
  menu do
    item :blog_posts, icon: "fa fa-star"
  end

  table do
    column :title
    column :published_at, align: :center
    actions
  end

  form do |blog_post|
    text_field :title
    rich_text_area :content

    row do
      col(xs: 6) { datetime_field :published_at }
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:blog_post).permit(:name, ...)
  # end
end
